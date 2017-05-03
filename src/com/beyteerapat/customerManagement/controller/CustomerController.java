package com.beyteerapat.customerManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.beyteerapat.customerManagement.DAO.CustomerDAO;
import com.beyteerapat.customerManagement.entity.Customer;

@Controller
public class CustomerController {

	// inject customerDAO
	@Autowired
	public CustomerDAO customerDAO;
	
	@RequestMapping("/")
	public String showIndex() {
		
		return "index";
	}
	
	@RequestMapping("/list")
	public String showCustomer(Model theModel) {
		
		// get customer from DAO
		List<Customer> theCustomers = customerDAO.getCustomers();
		
		// add to model
		theModel.addAttribute("customers", theCustomers);
		
		return "customer-list";
	}
	
	@RequestMapping("/new")
	public String newCustomer(Model theModel) {
		
		Customer theCustomer = new Customer();
		
		theModel.addAttribute("customer", theCustomer);
		
		return "customer-form";
	}
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {
		
		customerDAO.saveCustomer(theCustomer);
		
		return "redirect:/list";
	}
	
	@RequestMapping("/deleteCustomer")
	public String deleteCustomer(@RequestParam("customerId") int theId) {
		
		customerDAO.deleteCustomer(theId);
		
		return "redirect:/list";
	}
	
	@RequestMapping("/updateCustomer")
	public String updateCustomer(@RequestParam("customerId") int theId, Model theModel) {
		
		Customer theCustomer = customerDAO.updateCustomer(theId);
		
		theModel.addAttribute("customer", theCustomer);
		
		return "customer-form";
	}
}




