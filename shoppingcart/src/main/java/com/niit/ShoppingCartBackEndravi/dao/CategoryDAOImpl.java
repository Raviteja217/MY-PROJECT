package com.niit.ShoppingCartBackEndravi.dao;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.niit.ShoppingCartBackEndravi.modal.Category;

@Repository("CategoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	private SessionFactory sessionFactory;
	public CategoryDAOImpl(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}
	@Transactional
public void saveorUpdate(Category category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
		
	}
	@Transactional
	public void delete(int id) {
		Category categoryToDelete=new Category();
		categoryToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(categoryToDelete);
	}
	@Transactional
	public Category get(int id) {
		String hql="from Category where id="+"'"+id+"'";
	Query query= sessionFactory.getCurrentSession().createQuery(hql);
	@SuppressWarnings("unchecked")
	List<Category> listCategory=(List<Category>) query.list();
	if(listCategory !=null&& !listCategory.isEmpty()){
		return listCategory.get(0);
	}
	return null;
	}

@Transactional
public List<Category> list() {

	Session session=sessionFactory.openSession();
	List<Category> list=session.createQuery("from Category").list();
	session.close();
	return list; 
}

@Transactional
public List getAllCategorys() {
	// TODO Auto-generated method stub
	Session session=sessionFactory.openSession();
	List list=session.createQuery("from Category").list();
	session.close();
	return list;
	}
@Transactional
public int deleteCategorys(int id) {
	// TODO Auto-generated method stub
	Session session=sessionFactory.openSession();
	org.hibernate.Transaction tx=session.beginTransaction();
	Category category=(Category)session.load(Category.class, id);
	session.delete(category);
	tx.commit();
	
	session.close();
	return id;


	
	
}
public void saveOrUpdate(Category category) {
	// TODO Auto-generated method stub
	
}

}
