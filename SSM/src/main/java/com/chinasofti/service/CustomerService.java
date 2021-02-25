package com.chinasofti.service;

import java.util.List;

import com.chinasofti.pojo.Customer;

public interface CustomerService {
	public List<Customer> showAllCustomers();
	
	public List<Customer> conditionQuery(Customer c);
	
	public void addCustomer(Customer c);
	
	public void deleteCustomers(Integer[] delids);
	
	public void updateCustomerInfo(Customer c);
}
