package com.niit.ShoppingCartBackEndravi;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCartBackEndravi.dao.UserDAO;
import com.niit.ShoppingCartBackEndravi.modal.User;



public class UserTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.niit.ShoppingCartBackEndravi");
		context.refresh();

		UserDAO userDAO = (UserDAO) context.getBean("userDAO");

		User user= (User) context.getBean("user");
		user.setId("CG120");
		user.setName("CGName120");
		user.setAddress("CGadd120");
		user.setPassword("cgpass120");
		user.setEmail("usremail");
		user.setMobile_number("9090909090");
		
		

		userDAO.saveOrUpdate(user);

	}
}
