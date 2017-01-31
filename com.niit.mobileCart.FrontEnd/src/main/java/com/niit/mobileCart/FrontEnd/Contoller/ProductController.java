package com.niit.mobileCart.FrontEnd.Contoller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.mobileCart.backEnd.dao.CategoryDAO;
import com.niit.mobileCart.backEnd.dao.ProductDao;
import com.niit.mobileCart.backEnd.dao.SupplierDao;
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
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Category category;
	
	@Autowired
	SupplierDao supplierDao;
	
	@Autowired
	Supplier supplier;
	
	private Path path;
	
	@RequestMapping("/product")
	public ModelAndView showProductPage(Model model) {
		
		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		ModelAndView mv = new ModelAndView("product");
		mv.addObject("productList", this.productDao.list());
		mv.addObject("categoryList",this.categoryDAO.list());
		mv.addObject("supplierList", this.supplierDao.list());
		mv.addObject("showProductPage", "true");
		return mv;

}
	@RequestMapping(value = "/product-add", method = RequestMethod.POST)
	public String product(Model model, @Valid @ModelAttribute("product") Product product, HttpServletRequest request) {
		//user.setRole("u");
		
		System.out.println(product.getCategory().getName());
		
		Supplier supplier=supplierDao.getByName(product.getSupplier().getName());
		Category category=categoryDAO.getByName(product.getCategory().getName());
		
		product.setCategory(category);
		product.setCategory_id(category.getId());
		
		
		System.out.println(supplier.getName());
		
		product.setSupplier(supplier);
		product.setSupplier_id(supplier.getId());
		
		System.out.println(product.getId());
		System.out.println(product.getName());
		System.out.println(product.getStock());
		System.out.println(product.getPrice());
		System.out.println(product.getDescription());
		System.out.println(product.getCategory_id());
		System.out.println(product.getSupplier_id());
		
		productDao.save(product);

		//ModelAndView mv = new ModelAndView("category");

		//mv.addObject("successMsg", "You have added category details successfully!");
		
		
		// Multipart 
		
		MultipartFile file =product.getImage();
		String rootDirectory=request.getSession().getServletContext().getRealPath("/");
		path=Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+product.getId()+".jpg");
		if(file!=null &&!file.isEmpty())
		{
		try{
		file.transferTo(new File(path.toString()));
		System.out.println("image uploaded....");
		}
		catch(Exception e)
		{
		e.printStackTrace();
		throw new RuntimeException("image saving failed",e);
		}
		}
		
		
		
		
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
		model.addAttribute("categoryList",this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDao.list());
		model.addAttribute("productList", this.productDao.list());
		System.out.println("product added");
		return "product";
	}


}
