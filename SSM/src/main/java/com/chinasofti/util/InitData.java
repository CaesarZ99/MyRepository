package com.chinasofti.util;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.chinasofti.pojo.Company;
import com.chinasofti.pojo.Customer;
import com.chinasofti.pojo.Power;
import com.chinasofti.pojo.Revisit;
import com.chinasofti.pojo.Role;
import com.chinasofti.pojo.Users;
import com.chinasofti.pojo.Ware;
import com.chinasofti.service.CompanyService;
import com.chinasofti.service.CustomerService;
import com.chinasofti.service.PowerService;
import com.chinasofti.service.RevisitService;
import com.chinasofti.service.RoleService;
import com.chinasofti.service.UsersService;
import com.chinasofti.service.WareService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

//初始化视图
@Component
public class InitData {
	@Autowired
	private UsersService us;
	public void setUs(UsersService us) {
		this.us = us;
	}

	@Autowired
	private WareService ws;
	public void setWs(WareService ws) {
		this.ws = ws;
	}

	@Autowired
	private HttpServletRequest request;
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	@Autowired
	private CustomerService cus;
	public void setCus(CustomerService cus) {
		this.cus = cus;
	}
	
	@Autowired
	private RevisitService rvs;
	public void setRvs(RevisitService rvs) {
		this.rvs = rvs;
	}

	@Autowired
	private RoleService rs;
	public void setRs(RoleService rs) {
		this.rs = rs;
	}
	
	@Autowired
	private CompanyService cs;
	public void setCs(CompanyService cs) {
		this.cs = cs;
	}
	
	@Autowired
	private PowerService ps;
	public void setPs(PowerService ps) {
		this.ps = ps;
	}
	
	//初始化权限视图
	public void initPowerView() {
		List<Power> plist = ps.showAllPowers();
		request.getSession().setAttribute("plist", plist);
	}
	//初始化用户视图
	public PageInfo<Users> initUserView(int pageNum) {
		PageHelper.startPage(pageNum, 2);
		List<Users> ulist=us.showAllUsers();
		request.getSession().setAttribute("ulist", ulist);
		PageInfo<Users> pageinfo = new PageInfo<Users>(ulist);
		return pageinfo;

	}
	public PageInfo<Role> initRoleView(int pageNum) {
		PageHelper.startPage(pageNum, 2);
		List<Role> rlist = rs.showAllRoles();
		request.getSession().setAttribute("rlist",rlist);
		PageInfo<Role> pageinfo = new PageInfo<Role>(rlist);
		return pageinfo;
	}
	
	
	public PageInfo<Company> initFactoryView(int pageNum) {
		PageHelper.startPage(pageNum, 2);
		List<Company> comlist = cs.selectAllCompany();
		request.getSession().setAttribute("comlist", comlist);
		PageInfo<Company> pageinfo = new PageInfo<Company>(comlist);
		return pageinfo;
	}
	
	public PageInfo<Customer> initCustomerView(int pageNum) {
		PageHelper.startPage(pageNum, 2);
		List<Customer> cuslist = cus.showAllCustomers();
		request.getSession().setAttribute("cuslist", cuslist);
		PageInfo<Customer> pageinfo = new PageInfo<Customer>(cuslist);
		return pageinfo;
	}
	
	public PageInfo<Customer> conditionQueryCustomer(int pageNum,Customer c) {
		PageHelper.startPage(pageNum, 2);
		List<Customer> cuslist = cus.conditionQuery(c);
		request.getSession().setAttribute("cuslist", cuslist);
		PageInfo<Customer> pageinfo = new PageInfo<Customer>(cuslist);
		return pageinfo;
	}
	
	public PageInfo<Company> conditionQueryCompany(int pageNum,Company c) {
		PageHelper.startPage(pageNum, 2);
		List<Company> comlist = cs.queryCompanyByCondition(c);
		request.getSession().setAttribute("comlist", comlist);
		PageInfo<Company> pageinfo = new PageInfo<Company>(comlist);
		return pageinfo;
	}
	
	public void initRevisitInfo() {
		List<Revisit> revlist = rvs.showRevisitsView();
		List<Customer> cuslist = cus.showAllCustomers();
		request.getSession().setAttribute("cuslist", cuslist);
		request.getSession().setAttribute("revlist", revlist);
	}
	
	public void conditionQueryVisit(String vdate,String cusname) {
		List<Revisit> revlist = rvs.showRevisitsByCondition(vdate, cusname);
		request.getSession().setAttribute("revlist", revlist);
	}
	
	public PageInfo<Ware> initWareInfoView(int pageNum) {
		PageHelper.startPage(pageNum, 2);
		List<Ware> wlist = ws.showAllWares();
		request.getSession().setAttribute("wlist", wlist);
		PageInfo<Ware> pageinfo = new PageInfo<Ware>(wlist);
		return pageinfo;
	}
	
}
