package com.niit.ShoppingCartBackEndravi.dao;

import java.util.List;

import com.niit.ShoppingCartBackEndravi.modal.Supplier;

public interface SupplierDAO {

	public List<Supplier> list();
	public Supplier get(int id);
	public void saveOrUpdate(Supplier supplier);
	public void delete(int id);
	public void saveorUpdate(Supplier supplier);
	public List<Supplier> getAllSuppliers();
	

}
