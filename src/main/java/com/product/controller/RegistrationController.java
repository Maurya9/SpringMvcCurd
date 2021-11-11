package com.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.product.dao.RegistrationDao;
import com.product.model.Product;
import com.product.model.Registration;

@Controller
public class RegistrationController {
	@Autowired
	
	private RegistrationDao registrationDao;
	
	@RequestMapping("/res")
	public String getRegistration() {
		return "registration";
		
	}
	
	@RequestMapping("/lo")
	public String getLoginPage() {
		return "login";
		
	}
	
	@RequestMapping(path="/saveRegistration",method = RequestMethod.POST)
	public String createRes(@ModelAttribute("registration") Registration registration) {
		registrationDao.createRegistration(registration);
		return "login";
		
	}
	
	@RequestMapping("/login")
	public RedirectView Login(@RequestParam("username") String username,@RequestParam("password")String password,HttpServletRequest request,Model m) {
		System.out.println(username);
		System.out.println(password);
		List<Registration>product= registrationDao.getProduct();
		boolean flag=false;
		for(Registration d:product) {
			if(d.getUsername().equals(username) && d.getPassword().equals(password))
			{
			   flag=true;
			   break;
			}	
			
		}
		
		 if(flag) {
			 RedirectView view =new RedirectView();
			 view.setUrl(request.getContextPath()+"/homepage");
			 return view;
		 }
		 RedirectView v =new RedirectView();
		 v.setUrl(request.getContextPath()+"/");
		 //v.addStaticAttribute("msg", "Invalid UserName and Password 1");
		 m.addAttribute("msg", "Invalid UserName and Password 1");
		 return v;
		 
		
		
		
	}

}
