package com.niit.ShoppingCartBackEndravi;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCartBackEndravi.dao.CategoryDAO;
import com.niit.ShoppingCartBackEndravi.modal.Category;



public class CategoryTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.niit.ShoppingCartBackEndravi");
		context.refresh();

		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("categoryDAO");

		Category category = (Category) context.getBean("category");
		category.setId("CG120");
		category.setName("CGName120");
		category.setDescription("CGDesc120");

		categoryDAO.saveOrUpdate(category);

	}
}
