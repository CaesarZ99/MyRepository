package com.chinasofti.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.chinasofti.mapper.CustomerMapper;
import com.chinasofti.pojo.Customer;
import com.chinasofti.service.CustomerService;

@Service
@Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerMapper cusm;
	public void setCusm(CustomerMapper cusm) {
		this.cusm = cusm;
	}

	@Override
	public List<Customer> showAllCustomers() {
		// TODO Auto-generated method stub
		return cusm.selectCustomers();
	}

	@Override
	public List<Customer> conditionQuery(Customer c) {
		// TODO Auto-generated method stub
		
		return cusm.selectCustomerByConditions(c);
	}

	@Override
	public void addCustomer(Customer c) {
		// TODO Auto-generated method stub
		cusm.insert(c);
	}

	@Override
	public void deleteCustomers(Integer[] delids) {
		// TODO Auto-generated method stub
		cusm.deleteCustomers(delids);
	}

	@Override
	public void updateCustomerInfo(Customer c) {
		// TODO Auto-generated method stub
		cusm.updateByPrimaryKey(c);
	}

}
