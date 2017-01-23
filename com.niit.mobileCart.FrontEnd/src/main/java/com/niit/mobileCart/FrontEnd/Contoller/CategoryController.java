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
import com.niit.mobileCart.backEnd.dao.SupplierDao;
import com.niit.mobileCart.backEnd.model.Category;
import com.niit.mobileCart.backEnd.model.Supplier;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	Category category;
	
	@RequestMapping("/category")
	public ModelAndView showCategoryPage(Model model) {
		model.addAttribute("category", category);
		ModelAndView mv = new ModelAndView("category");
		mv.addObject("categoryList", categoryDAO.list());
		mv.addObject("showCategoryPage", "true");
		return mv;

}
	@RequestMapping(value = "category-add", method = RequestMethod.POST)
	public String category(@ModelAttribute("category") Category category) {
		//user.setRole("u");
		categoryDAO.save(category);

		//ModelAndView mv = new ModelAndView("category");

		//mv.addObject("successMsg", "You have added category details successfully!");
		return "redirect:/category";
	}
	@RequestMapping("/manage_category_delete-{id}")
	public String deleteCategory(@PathVariable("id") String id)
	{
		
		categoryDAO.delete(id);
		System.out.println("category deleted");
		return "redirect:/category";
	}
	
	@RequestMapping("manage_category_edit-{id}")
	public String editSupplier(@PathVariable("id") String id, Model model)
	{
		
		model.addAttribute("category",this.categoryDAO.get(id));
		model.addAttribute("categoryList", this.categoryDAO.list());
		System.out.println("category added");
		return "category";
	}


}
