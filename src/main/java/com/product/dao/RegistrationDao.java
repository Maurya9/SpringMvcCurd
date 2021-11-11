package com.product.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.product.model.Product;
import com.product.model.Registration;

@Component
public class RegistrationDao {
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createRegistration(Registration registration) {
		this.hibernateTemplate.save(registration);
		}
	
	public List<Registration>getProduct(){
		List<Registration>register=	this.hibernateTemplate.loadAll(Registration.class);
			
			return register;
			
		}

}
