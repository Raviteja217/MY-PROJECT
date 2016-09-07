package com.niit.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;


import com.niit.ShoppingCartBackEndravi.dao.LoginDAO;
import com.niit.ShoppingCartBackEndravi.dao.RegisterDAO;
import com.niit.ShoppingCartBackEndravi.modal.Login;
import com.niit.ShoppingCartBackEndravi.modal.Product;
import com.niit.ShoppingCartBackEndravi.modal.Register;

@Controller
	public class HomeController 
	{
	
	@Autowired
     LoginDAO lg;
	@Autowired
	RegisterDAO rs;
	@Autowired
	Login newuser;
	SessionFactory sessionFactory; 
	@RequestMapping("/")
	 public ModelAndView display()
	 {
	 ModelAndView m=new ModelAndView("home");
	 return m;
	 }
	 @RequestMapping("login")
	 public ModelAndView display1()
	 {
	 ModelAndView m1=new ModelAndView("login");
	 return m1;
	 }
	 @RequestMapping("register")
	 public ModelAndView display2()
	 {
	 ModelAndView m2=new ModelAndView("register");
	 return m2;
	 }

	 @RequestMapping("category")
	 public ModelAndView display3()
	 {
	 ModelAndView m3=new ModelAndView("category");
	 return m3;
	 }
	 @RequestMapping("about")
	 public ModelAndView display4()
	 {
	 ModelAndView m4=new ModelAndView("about");
	 return m4;
	 }
	 
	
	 @RequestMapping("hai")
	 public String display7()
	 {
	 
	 return "home";
	 }
	 @RequestMapping("hello")
	 public String display11()
	 {
	 
	 return "index";
	 }
	 @RequestMapping("back")
	 public String display12()
	 {
	 
	 return "admin";
	 }
	
	
	

@ModelAttribute("Register")
public Register createregister()
{
	return new Register();
}
	
	

@RequestMapping(value = "/storeUser", method = RequestMethod.POST)
public String addUser(@Valid @ModelAttribute("Register")Register register ,BindingResult result)
{
   	
	if(result.hasErrors()) {
		
		return "register";
		
	}	
	 rs.saveOrUpdate(register);
	 newuser.setId(register.getId());
	 newuser.setStatus(register.getStatus());
	 newuser.setName(register.getName());
	 newuser.setPassword(register.getPassword());
	 lg.save(newuser);
	 return "login";
	
   }
@RequestMapping(value = "/fail2login", method = RequestMethod.GET)
public ModelAndView loginerror(ModelMap model) {
	System.out.println("hello ravi.....................");

	return new ModelAndView("login", "error", true);

}
@RequestMapping(value = "/welcome", method = RequestMethod.GET)
public ModelAndView checkUserOne(HttpServletRequest request, HttpServletResponse response, HttpSession session)
		throws Exception {
	System.out.println("hi");
	if (request.isUserInRole("ROLE_ADMIN")) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String str = auth.getName(); // get logged in username
		session = request.getSession(true);
		session.setAttribute("loggedInUser", str);
		// session.invalidate();
		ModelAndView m5 = new ModelAndView("admin");
		return m5; 
	}
	else
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String str = auth.getName(); // get logged in username
		session = request.getSession(true);
		session.setAttribute("loggedInUser", str);
		ModelAndView m6 = new ModelAndView("index");
		return m6;
	}
}
	@RequestMapping("logoutsuccess")
	public ModelAndView logoutpage(){
		ModelAndView mv9 = new ModelAndView("logoutsuccess");
		mv9.addObject("ravi..","logout success");
		return mv9;
	}

	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws ServletException, IOException {
		HttpSession newsession = request.getSession(false);
		if (newsession != null) 
	    {
	         newsession.invalidate();

	    }
		response.sendRedirect("j_spring_security_logout");	
		
}
}
	
