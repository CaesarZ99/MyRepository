package com.chinasofti.service.impl;

import java.util.List;

import javax.swing.text.html.CSS;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.chinasofti.mapper.CompanyMapper;
import com.chinasofti.pojo.Company;
import com.chinasofti.service.CompanyService;

@Service
@Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private CompanyMapper cm;
	public void setCm(CompanyMapper cm) {
		this.cm = cm;
	}

	@Override
	public List<Company> selectAllCompany() {
		// TODO Auto-generated method stub
		return cm.selectAllCompanysInfo();
	}

	@Override
	public void deleteCompanys(Integer[] delids) {
		// TODO Auto-generated method stub
		cm.deleteCompanys(delids);
	}

	@Override
	public void addCompany(Company c) {
		// TODO Auto-generated method stub
		cm.insert(c);
	}

	@Override
	public void updateCompany(Company c) {
		// TODO Auto-generated method stub
		cm.updateByPrimaryKey(c);
	}

	@Override
	public List<Company> queryCompanyByCondition(Company c) {
		// TODO Auto-generated method stub
		return cm.selectCompanyByCondition(c);
	}

}
