package com.niit.mobileCart.FrontEnd.Contoller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.mobileCart.backEnd.dao.CartDAO;
import com.niit.mobileCart.backEnd.dao.CategoryDAO;
import com.niit.mobileCart.backEnd.dao.ProductDao;
import com.niit.mobileCart.backEnd.dao.UserDao;
import com.niit.mobileCart.backEnd.model.Cart;
import com.niit.mobileCart.backEnd.model.Category;
import com.niit.mobileCart.backEnd.model.Product;
import com.niit.mobileCart.backEnd.model.User;



@Controller
public class CartController 
{
	
 @Autowired(required=true)
 Cart cart;
 
 @Autowired(required=true)
 CartDAO cartDAO;
 
 @Autowired(required=true)
 CategoryDAO categoryDAO;
 
 @Autowired(required=true)
 ProductDao productDao;
 
 @Autowired(required=true)
 Product product;
 
 @Autowired(required=true)
 UserDao userDao;
	
 	@Autowired(required=true)
   private User user;
   
   
	@RequestMapping(value = "/myCart", method = RequestMethod.GET)
	public String myCart(Model model,Principal principal)
	{
		try
		{
		model.addAttribute("cart",new Cart());
		model.addAttribute("cartList",this.cartDAO.userCartList(principal.getName()));
		model.addAttribute("category",new Category());
		model.addAttribute("categoryList",this.categoryDAO.list());
		model.addAttribute("displayCart","true");
		
		
		int i,j=0;
		int s=0;
		int n=cartDAO.userCartList(principal.getName()).size();
		System.out.println(n);
		for(i=0;i<n;i++)
		{
			s=s+cartDAO.userCartList(principal.getName()).get(i).getPrice();
		}
		System.out.print(s);
		model.addAttribute("sum",s);
		
		}
		catch(Exception ex)
		{
			System.out.println("ex.getMessage");
			
		}
		return "cart";
		
		
	}
	
	@RequestMapping(value = "product_get_cart_add-{id}", method = RequestMethod.GET)
	public String addToCart(@PathVariable("id") String id, HttpServletRequest request ,Principal principal)
	{
		try
		{
		
		Product product=productDao.get(id);
		
		
		
		//User user = userDAO.getUser(id);
		Cart cart=new Cart();   		
		cart.setPrice(product.getPrice());
		cart.setP_id(product.getId());
		cart.setP_name(product.getName());
		cart.setQuantity(1);
		cart.setU_id(principal.getName());		
		cart.setStatus("N");
		
		cartDAO.addCart(cart);
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return "redirect:/";
		
		
		
	}
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public String checkout(Model model,Principal principal)
	{
		int i,j=0;
		int s=0;
		int n=cartDAO.userCartList(principal.getName()).size();
		System.out.println(n);
		for(i=0;i<n;i++)
		{
			s=s+cartDAO.userCartList(principal.getName()).get(i).getPrice();
		}
		System.out.print(s);
		model.addAttribute("sum",s);
		model.addAttribute("cart",new Cart());
		model.addAttribute("cartList",this.cartDAO.userCartList(principal.getName()));
		
		return "/checkout";
	    
	}
	@RequestMapping("/cart/delete/{id}")
	public String deleteCart(@PathVariable("id") int id,Model model)
	{
		cartDAO.deleteCart(id);
		return "redirect:/myCart";
	}
	
	
	
	@RequestMapping("/payment")
	public String getPayment()
	{
		return "payment";
	}
	
	@RequestMapping("/thanks")
	public String getThanks()
	{
		return "thanks";
	}
	
	@RequestMapping(value="product_get-{id}")
	public String getItems(@PathVariable("id")String id,Model model)
	{
		model.addAttribute("selectedProduct",this.productDao.get(id));
		return "item";
	}
}
