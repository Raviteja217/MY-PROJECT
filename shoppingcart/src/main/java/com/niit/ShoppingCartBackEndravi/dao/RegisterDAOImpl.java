package com.niit.ShoppingCartBackEndravi.dao;
import java.util.List;

import org.hibernate.Criteria;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCartBackEndravi.modal.Register;




@Repository("RegisterDAO")

public class RegisterDAOImpl implements RegisterDAO {
	@Autowired
	private SessionFactory sessionFactory;
	public RegisterDAOImpl(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
@Transactional
public void saveOrUpdate(Register user){
	sessionFactory.getCurrentSession().saveOrUpdate(user);
}
@Transactional
public void delete(int id){
	Register UserToDelete = new Register();
	UserToDelete.setId(id);
	sessionFactory.getCurrentSession().delete(UserToDelete);
}
@Transactional
public Register get(int id){
	String hql = "from User where id ="+"'"+id+"'";
	Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
	List<Register> listUser = (List<Register>) query.getResultList();
	
	if(listUser != null && listUser.isEmpty()){
		return listUser.get(0);
	}
	return null;
}
@Transactional
public List<Register> list() {
	@SuppressWarnings("unchecked")
	List<Register> listUser = (List<Register>)
	sessionFactory.getCurrentSession().createCriteria(Register.class)
	.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	return listUser;
}

}

	
	







