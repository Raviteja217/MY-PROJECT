package com.niit.ShoppingCartBackEndravi.dao;

import java.util.List;

import com.niit.ShoppingCartBackEndravi.modal.Category;

public interface CategoryDAO {

	public List<Category> list();
	public Category get(int id);
	public void delete(int id);
	public void saveorUpdate(Category category);
	

}
