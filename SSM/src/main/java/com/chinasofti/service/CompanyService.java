package com.chinasofti.service;

import java.util.List;

import com.chinasofti.pojo.Company;

public interface CompanyService {
	public List<Company> selectAllCompany();
	
	public void deleteCompanys(Integer[] delids);
	
	public void addCompany(Company c);
	
	public void updateCompany(Company c);
	
	public List<Company> queryCompanyByCondition(Company c);

}
