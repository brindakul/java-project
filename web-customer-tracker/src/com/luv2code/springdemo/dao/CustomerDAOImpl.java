package com.luv2code.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.luv2code.springdemo.entity.Customer;



@Repository //applied to DAO implementations
public class CustomerDAOImpl implements CustomerDAO {

	//need to inject session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Customer> getCustomers() {
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		//create a query sort
		Query<Customer> theQuery= currentSession.createQuery("from Customer order by lastName", Customer.class);
		
		
		List<Customer> customers=theQuery.getResultList();
		
		
		
		
		return customers;
	}

	@Override
	public void saveCustomer(Customer theCustomer) {
//get current hibernate session
		
		Session currentSession= sessionFactory.getCurrentSession();
		
		//save the customer
	}

}
