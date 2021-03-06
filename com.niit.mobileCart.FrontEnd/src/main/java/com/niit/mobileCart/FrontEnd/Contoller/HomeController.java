package com.niit.mobileCart.FrontEnd.Contoller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.mobileCart.backEnd.dao.CartDAO;
import com.niit.mobileCart.backEnd.dao.CategoryDAO;
import com.niit.mobileCart.backEnd.dao.ProductDao;
import com.niit.mobileCart.backEnd.dao.SupplierDao;
import com.niit.mobileCart.backEnd.dao.UserDao;
import com.niit.mobileCart.backEnd.model.Cart;
import com.niit.mobileCart.backEnd.model.Category;
import com.niit.mobileCart.backEnd.model.Product;
import com.niit.mobileCart.backEnd.model.Supplier;
import com.niit.mobileCart.backEnd.model.User;

@Controller
public class HomeController {
	@Autowired // Need to call methods of UserDAOImpl and User --so autowired

	UserDao userDao;

	@Autowired
	User user;

	
	 @Autowired
	 CategoryDAO categoryDAO;
	 
	 @Autowired 
	 Category category;
	 
	  @Autowired 
	  SupplierDao supplierDao;
	  
	  
	  @Autowired 
	  Supplier supplier;
	  
	  @Autowired 
	  ProductDao productDao;
	  
	  @Autowired 
	  Product product;
	  
	  @Autowired
	  CartDAO cartDAO;
	  
	  @Autowired
	  Cart cart;
	 

	// @Autowired(required=true)
//	@RequestMapping("/login") // Want to navigatte to home page
//	public ModelAndView showLoginPage() {
//		ModelAndView mv = new ModelAndView("login");
//		mv.addObject("showLoginPage", "true");
//		return mv;
//	}

	@RequestMapping("/register") // Want to navigatte to register page
	public ModelAndView showRegistrationPage(Model model) { // to which page you
															// have to navigate
		model.addAttribute("user", new User()); // -> What data I need to carry
		ModelAndView mv = new ModelAndView("register");
		mv.addObject("showRegistrationPage", "true");
		return mv;
	}

	@RequestMapping(value = "/register-add", method = RequestMethod.POST)
	public ModelAndView registering(@ModelAttribute("user") User user) {
		user.setRole("ROLE_USER");
		userDao.save(user);

		ModelAndView mv = new ModelAndView("register");

		mv.addObject("successMsg", "You have registered successfully!");
		return mv;
	}
//
//	@RequestMapping("/") // Want to navigatte to index page
//	public String indexPage() {
//		return "index";
//	}

//	@RequestMapping(value = "/validate")
//	public ModelAndView validate(@RequestParam("id") String id, @RequestParam("password") String password) {
//		ModelAndView mv = new ModelAndView("index");
//
//		if (userDao.validate(id, password) != null) {
//			mv.addObject("successMsg", "You have logged in successfully!");
//		} else {
//			mv.addObject("successMsg", "Entered Username and/or Password not in our records");
//		}
//		return mv;
//	}

//	@RequestMapping("/admin")
//	public ModelAndView showAdminPage() {
//		ModelAndView mv = new ModelAndView("admin");
//		mv.addObject("showAdminPage", "true");
//		return mv;
//	}

	/*
	 * @RequestMapping("/supplier") public ModelAndView showSupplierPage(Model
	 * model) { model.addAttribute("supplier", supplier); ModelAndView mv = new
	 * ModelAndView("supplier"); mv.addObject("showSupplierPage", "true");
	 * return mv; }
	 */

	/*
	 * @RequestMapping("/category") public ModelAndView showCategoryPage(Model
	 * model ) { model.addAttribute("category", category); ModelAndView mv = new
	 * ModelAndView("category"); mv.addObject("showCategoryPage", "true");
	 * return mv;
	 * 
	 * }
	 */

	/*
	 * @RequestMapping("/product") public ModelAndView showProductPage(Model
	 * model) { model.addAttribute("product",product); ModelAndView mv = new
	 * ModelAndView("product"); mv.addObject("showProductPage", "true"); return
	 * mv;
	 * 
	 * }
	 * 
	 * @RequestMapping(value = "/supplier-add", method = RequestMethod.POST)
	 * public ModelAndView supplier(@ModelAttribute("supplier") Supplier
	 * supplier) { //user.setRole("u"); supplierDao.save(supplier);
	 * 
	 * ModelAndView mv = new ModelAndView("supplier");
	 * 
	 * mv.addObject("successMsg",
	 * "You have added supplier details successfully!"); return mv; }
	 * 
	 * @RequestMapping(value = "/category-add", method = RequestMethod.POST)
	 * public ModelAndView category(@ModelAttribute("category") Category
	 * category) { //user.setRole("u"); categoryDAO.save(category);
	 * 
	 * ModelAndView mv = new ModelAndView("category");
	 * 
	 * mv.addObject("successMsg",
	 * "You have added category details successfully!"); return mv; }
	 * 
	 * @RequestMapping(value = "/product-add", method = RequestMethod.POST)
	 * public ModelAndView product(@ModelAttribute("product") Product product) {
	 * //user.setRole("u"); productDao.save(product);
	 * 
	 * ModelAndView mv = new ModelAndView("product");
	 * 
	 * mv.addObject("successMsg", "You have added product details successfully!"
	 * ); return mv;
	 */
	
	@RequestMapping(value="/login")
	public String  login(@RequestParam(value="error",required=false)String error,@RequestParam(value="logout",required=false) String logout,Model model)
	{
		if(error!=null)
		{
			System.out.println("Error..");
			model.addAttribute("loginerror","...Invalid username and password");
		}
		
		if(logout!=null)
		{
			System.out.println("logout called..");
			model.addAttribute("loginmsg","...you have been logged out");
		}
		
		return "login";
	}
	
    @RequestMapping(value="/admin")
    public String getAdmin()
    {
    	return "admin";
    }
    
    @RequestMapping(value="home")
    public String goHome()
    {
    	return "redirect:/";
    }
    
    @RequestMapping("/")
	public ModelAndView getLandPage(HttpSession session)
	{
				ModelAndView mv = new ModelAndView("index");
		session.setAttribute("category", category);
		session.setAttribute("product", product);
		session.setAttribute("supplier", supplier);
		
		session.setAttribute("categoryList", categoryDAO.list());
		
		int n=cartDAO.list().size();
		mv.addObject("size", n);
		return mv;
	}

    @RequestMapping("/onLoad")
    public ModelAndView home(HttpSession session)
    {
		ModelAndView mv = new ModelAndView("index");
		session.setAttribute("category", category);
		session.setAttribute("product", product);
		session.setAttribute("supplier", supplier);
		
		session.setAttribute("categoryList", categoryDAO.list());
		
 		return mv;
    }
    
    @RequestMapping(value="/about-us")
    public String getAboutus()
    {
    	return "about-us";
    }
    @RequestMapping(value="/contact-us")
    public String getContactus()
    {
    	return "contactus";
    }
    
    
//    @RequestMapping(value="/carousel")
//    public String getCarousel()
//    {
//    	return "carousel";
//    }

} 