package com.niit.mobileCart.FrontEnd.Contoller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.mobileCart.backEnd.dao.SupplierDao;
import com.niit.mobileCart.backEnd.model.Category;
import com.niit.mobileCart.backEnd.model.Supplier;
@Controller
public class SupplierContoller 
{
	@Autowired
	SupplierDao supplierDao;
	@Autowired
	Supplier supplier;
	
	@RequestMapping("/supplier")
	public ModelAndView showSupplierPage(Model model) {
		model.addAttribute("supplier", supplier);
		ModelAndView mv = new ModelAndView("supplier");
		mv.addObject("supplierList", supplierDao.list());
		mv.addObject("showSupplierPage", "true");
		return mv;

}
	@RequestMapping(value = "supplier-add", method = RequestMethod.POST)
	public String supplier(@ModelAttribute("supplier") Supplier supplier) {
		//user.setRole("u");
		supplierDao.save(supplier);

		//ModelAndView mv = new ModelAndView("category");

		//mv.addObject("successMsg", "You have added category details successfully!");
		return "redirect:/supplier";
	}
	@RequestMapping("/manage_supplier_delete-{id}")
	public String deleteSupplier(@PathVariable("id") String id)
	{
		
		supplierDao.delete(id);
		System.out.println("supplier deleted");
		return "redirect:/supplier";
	}
	
	@RequestMapping("manage_supplier_edit-{id}")
	public String editSupplier(@PathVariable("id") String id, Model model)
	{
		
		model.addAttribute("supplier",this.supplierDao.get(id));
		model.addAttribute("supplierList", this.supplierDao.list());
		System.out.println("supplier added");
		return "supplier";
	}


}
		
