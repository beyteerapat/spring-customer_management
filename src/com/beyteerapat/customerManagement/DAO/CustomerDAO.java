package com.beyteerapat.customerManagement.DAO;

import java.util.List;

import com.beyteerapat.customerManagement.entity.Customer;

public interface CustomerDAO {
	
	public List<Customer> getCustomers();
	
	public void saveCustomer(Customer theCustomer);
	
	public void deleteCustomer(int theId);

	public Customer updateCustomer(int theId);
	
}
