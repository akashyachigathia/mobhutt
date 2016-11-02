 package com.mobhut.product;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProductServiceImpl implements ProductService
{
	@Autowired
	ProductDAO pdao;
	
	@Transactional
	public void insert(Product p) {
		pdao.insert(p);;
	}

	@Transactional
	public void update(Product p) {
		pdao.update(p);
	}

	@Transactional
	public void delete(int pid) {
		pdao.delete(pid);
	}

	@Transactional
	public Product getProduct(int pid) {
		return pdao.getProduct(pid);
	}

	@Transactional
	public List<Product> getAllProducts() {
		return pdao.getAllProducts();
	}

	public Product getProductWithMaxId() {
		return pdao.getProductWithMaxId();
	}

}