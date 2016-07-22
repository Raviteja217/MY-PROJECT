package com.niit.ShoppingCartBackEndravi;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCartBackEndravi.dao.SupplierDAO;
import com.niit.ShoppingCartBackEndravi.modal.Supplier;



public class SupplierTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.niit.ShoppingCartBackEndravi");
		context.refresh();

		SupplierDAO supplierDAO = (SupplierDAO) context.getBean("supplierDAO");

		Supplier supplier = (Supplier) context.getBean("supplier");
		supplier.setId("CG120");
		supplier.setName("CGName120");
		supplier.setAddress("CGDesc120");

		supplierDAO.saveOrUpdate(supplier);

	}
}
