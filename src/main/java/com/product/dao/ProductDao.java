package com.product.dao;


import java.util.List;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;


import com.product.model.Product;

@Component
public class ProductDao {
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createProduct(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
		
	}
	
	public List<Product>getProduct(){
	List<Product>products=	this.hibernateTemplate.loadAll(Product.class);
		
		return products;
		
	}
	
	
	
	@Transactional
	public void deleteProduct(int pid) {
		Product p=this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(p);
		
		}
	
	public Product getProduct(int pid) {
		Product p=this.hibernateTemplate.get(Product.class, pid);
		return p;
		
	}
	
	

}
