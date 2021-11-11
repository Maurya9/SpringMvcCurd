package com.product.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.product.dao.ProductDao;
import com.product.model.Product;

@Controller
public class MainController {
	
  @Autowired
  private ProductDao productDao;
  
  @RequestMapping("/")
  public String getFirstPage() {
	return "login";
	  
	  
  }
  @RequestMapping("/homepage")
  public String callJsp(Model m) {
	 List<Product>product= productDao.getProduct();
	 System.out.println(product);
	
		
		 
		 
	 m.addAttribute("product", product);
	 
	
	return "index";
	  
	  
  }
	
	@RequestMapping("/add")
	public String addProduct(Model m) {
		m.addAttribute("title", "Add Product");
		return "add_product_form";
		
	}
	
	@RequestMapping(path ="/addProduct",method = RequestMethod.POST)
	public RedirectView saveProduct(@Valid @ModelAttribute Product product, Errors error, HttpServletRequest request) {
		if(error.hasErrors())
		{
			System.out.println("jack");
			System.out.println(error);
			RedirectView v=new RedirectView();
			v.setUrl(request.getContextPath()+"/add");
			return v;
		}
		else {
		System.out.println("sadnnkkk");
		System.out.println(product);
		productDao.createProduct(product);
		RedirectView view=new RedirectView();
		view.setUrl(request.getContextPath()+"/homepage");
		return view;
		}
		
		
	}
	
	
	
	@RequestMapping("/delete/{productid}")
	public RedirectView deleteProduct(@PathVariable("productid") int productId,HttpServletRequest request) {
		productDao.deleteProduct(productId);
		RedirectView view=new RedirectView();
		view.setUrl(request.getContextPath()+"/homepage");
		return view;
		
	}
	
	@RequestMapping("/getupdatepage/{productid}")
	public String getUpdatePage(@PathVariable("productid")int productId,Model m) {
		Product product=productDao.getProduct(productId);
		m.addAttribute("product", product);
		return "edit";
		
	}

}
