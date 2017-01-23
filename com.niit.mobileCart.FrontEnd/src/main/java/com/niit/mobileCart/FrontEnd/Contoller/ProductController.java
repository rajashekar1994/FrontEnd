package com.niit.mobileCart.FrontEnd.Contoller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.mobileCart.backEnd.dao.CategoryDAO;
import com.niit.mobileCart.backEnd.dao.ProductDao;
import com.niit.mobileCart.backEnd.model.Category;
import com.niit.mobileCart.backEnd.model.Product;
import com.niit.mobileCart.backEnd.model.Supplier;
@Controller
public class ProductController
{
	@Autowired
	ProductDao productDao;
	@Autowired
	Product product;
	
	@RequestMapping("/product")
	public ModelAndView showProductPage(Model model) {
		model.addAttribute("product", product);
		ModelAndView mv = new ModelAndView("product");
		mv.addObject("productList", productDao.list());
		mv.addObject("showProductPage", "true");
		return mv;

}
	@RequestMapping(value = "product-add", method = RequestMethod.POST)
	public String product(@ModelAttribute("product") Product product) {
		//user.setRole("u");
		productDao.save(product);

		//ModelAndView mv = new ModelAndView("category");

		//mv.addObject("successMsg", "You have added category details successfully!");
		return "redirect:/product";
	}
	@RequestMapping("/manage_product_delete-{id}")
	public String deleteProduct(@PathVariable("id") String id)
	{
		
		productDao.delete(id);
		System.out.println("product deleted");
		return "redirect:/product";
	}
	
	@RequestMapping("manage_product_edit-{id}")
	public String editProduct(@PathVariable("id") String id, Model model)
	{
		
		model.addAttribute("product",this.productDao.get(id));
		model.addAttribute("productList", this.productDao.list());
		System.out.println("product added");
		return "product";
	}


}
