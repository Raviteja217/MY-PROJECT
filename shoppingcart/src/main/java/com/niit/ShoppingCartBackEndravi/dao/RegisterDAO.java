package com.niit.ShoppingCartBackEndravi.dao;

import java.util.List;

import com.niit.ShoppingCartBackEndravi.modal.Register;

public interface RegisterDAO {

	public List<Register> list();
	public Register get(int id);
	public void saveOrUpdate(Register register);
	public void delete(int id);
	
	

}
