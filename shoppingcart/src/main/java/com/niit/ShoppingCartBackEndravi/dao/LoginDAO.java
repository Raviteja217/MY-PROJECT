package com.niit.ShoppingCartBackEndravi.dao;

import java.util.List;

import com.niit.ShoppingCartBackEndravi.modal.Login;

public interface LoginDAO {

	public List<Login> list();
	public Login get(int id);
	
	public void delete(int id);
	public void save(Login login);
	public void update(Login login);
	

}
