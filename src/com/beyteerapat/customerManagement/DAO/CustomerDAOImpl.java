package com.beyteerapat.customerManagement.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.beyteerapat.customerManagement.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	// inject session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<Customer> getCustomers() {
		
		// get current session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create query
		Query<Customer> q = currentSession.createQuery("from Customer", Customer.class);
		
		// execute query
		List<Customer> customers = q.getResultList();
		
		return customers;
	}

	@Override
	@Transactional
	public void saveCustomer(Customer theCustomer) {
		
		// get current session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save into Customer
		currentSession.saveOrUpdate(theCustomer);
		
	}

	@Override
	@Transactional
	public void deleteCustomer(int theId) {
		
		// get current session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create Query
		Query theQuery = currentSession.createQuery("delete from Customer where id=:customerId");
		
		theQuery.setParameter("customerId", theId);
		
		theQuery.executeUpdate();
	}

	@Override
	@Transactional
	public Customer updateCustomer(int theId) {
	
		// get current session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create Query
		Customer theCustomer = currentSession.get(Customer.class, theId);
		
		return theCustomer;
	}

}
