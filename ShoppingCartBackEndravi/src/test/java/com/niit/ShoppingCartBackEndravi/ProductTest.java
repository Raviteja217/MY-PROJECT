package com.niit.ShoppingCartBackEndravi;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCartBackEndravi.dao.ProductDAO;
import com.niit.ShoppingCartBackEndravi.modal.Product;



public class ProductTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.niit.ShoppingCartBackEndravi");
		context.refresh();

		ProductDAO productDAO = (ProductDAO) context.getBean("productDAO");

		Product product = (Product) context.getBean("product");
		product.setId("CG120");
		product.setName("CGName120");
		product.setDescription("CGDesc120");
		product.setPrice("CGDesc120");

		productDAO.saveOrUpdate(product);

	}
}
