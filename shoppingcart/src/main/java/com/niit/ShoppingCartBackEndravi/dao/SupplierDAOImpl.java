package com.niit.ShoppingCartBackEndravi.dao;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.niit.ShoppingCartBackEndravi.modal.Supplier;

@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {
	@Autowired
	private SessionFactory sessionFactory;
	public SupplierDAOImpl(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}
	@Transactional
public void saveorUpdate(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		
	}
	@Transactional
	public void delete(int id) {
		Supplier SupplierToDelete=new Supplier();
		SupplierToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(SupplierToDelete);
	}
	@Transactional
	public Supplier get(int id) {
		String hql="from Supplier where id="+"'"+id+"'";
	Query query= sessionFactory.getCurrentSession().createQuery(hql);
	@SuppressWarnings("unchecked")
	List<Supplier> listSupplier=(List<Supplier>) query.list();
	if(listSupplier !=null&& !listSupplier.isEmpty()){
		return listSupplier.get(0);
	}
	return null;
	}

@Transactional
public List<Supplier> list() {

	Session session=sessionFactory.openSession();
	List<Supplier> list=session.createQuery("from Supplier").list();
	session.close();
	return list; 
}

@Transactional
public List getAllSuppliers() {
	// TODO Auto-generated method stub
	Session session=sessionFactory.openSession();
	List list=session.createQuery("from Supplier").list();
	session.close();
	return list;
	}
@Transactional
public int deleteSuppliers(int id) {
	// TODO Auto-generated method stub
	Session session=sessionFactory.openSession();
	org.hibernate.Transaction tx=session.beginTransaction();
	Supplier supplier=(Supplier)session.load(Supplier.class, id);
	session.delete(supplier);
	tx.commit();
	
	session.close();
	return id;


	
	
}
public void saveOrUpdate(Supplier supplier) {
	// TODO Auto-generated method stub
	
}

}
