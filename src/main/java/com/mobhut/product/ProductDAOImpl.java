package com.mobhut.product;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Repository
@EnableTransactionManagement
public class ProductDAOImpl implements ProductDAO
{
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public void insert(Product c) {
		sessionFactory.getCurrentSession().save(c);
	}

	@Transactional
	public void update(Product c) {
		sessionFactory.getCurrentSession().update(c);
	}

	@Transactional
	public void delete(int pid) {
		sessionFactory.getCurrentSession().createQuery("delete from Product as c where c.ProductId = :pid").setInteger("pid", pid).executeUpdate();
	}

	@Transactional
	public Product getProduct(int cid) {
		List<Product> list = sessionFactory.getCurrentSession().createQuery("from Product c where c.ProductId = :catid").setInteger("catid", cid).list();
		
		if( list.isEmpty() )
			return null;
		else
		{
			return (Product)list.get(0);
		}
	}

	@Transactional
	public List<Product> getAllProducts() {
		return sessionFactory.getCurrentSession().createQuery("from Product c").list();
	}

	@Transactional
	public Product getProductWithMaxId() {
		List<Product> list = sessionFactory.getCurrentSession().createQuery("from Product c where c.ProductId = (select max(p1.ProductId) from Product p1)").list();
		
		if( list.isEmpty() )
			return null;
		else
		{
			return (Product)list.get(0);
		}
	}

}