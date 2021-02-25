package com.chinasofti.mapper;

import java.util.List;

import com.chinasofti.pojo.Customer;
import com.chinasofti.pojo.Revisit;

public interface CustomerMapper {
    int deleteByPrimaryKey(Integer cusid);

    void insert(Customer record);

    List<Customer> selectCustomers();
    
    int insertSelective(Customer record);

    Customer selectByPrimaryKey(Integer cusid);
    
    List<Customer> selectCustomerByConditions(Customer c);

    void updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);
    
    void deleteCustomers(Integer[] delids);
    
    
}