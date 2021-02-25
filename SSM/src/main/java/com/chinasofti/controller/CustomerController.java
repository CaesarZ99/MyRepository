package com.chinasofti.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.pojo.Company;
import com.chinasofti.pojo.Customer;
import com.chinasofti.pojo.Revisit;
import com.chinasofti.pojo.Role;
import com.chinasofti.service.CompanyService;
import com.chinasofti.service.CustomerService;
import com.chinasofti.service.RevisitService;
import com.chinasofti.util.InitData;
import com.github.pagehelper.PageInfo;

@Controller
public class CustomerController {
	@Autowired
	private CompanyService cs;
	public void setCs(CompanyService cs) {
		this.cs = cs;
	}
	@Autowired
	private CustomerService cus;
	public void setCus(CustomerService cus) {
		this.cus = cus;
	}
	
	@Autowired
	private HttpServletRequest request;
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	@Autowired
	private InitData initData;
	public void setInitData(InitData initData) {
		this.initData = initData;
	}
	
	@Autowired
	private RevisitService rev;
	public void setRev(RevisitService rev) {
		this.rev = rev;
	}

	//去客户管理的厂商信息界面
	@RequestMapping(value = "/companyView")
	public String companyView(Model model,@RequestParam(defaultValue = "1") Integer pageNum) {
		PageInfo<Company> pageInfo=initData.initFactoryView(pageNum);;
		model.addAttribute("pageInfo",pageInfo);
		return "customer/listfactory";
	}
	
	//批量删除公司信息
	@RequestMapping(value = "/delCompanys",method = RequestMethod.POST)
	public String delCompanys(@RequestParam("delids")Integer[] delids) {
		cs.deleteCompanys(delids);
		return "forward:/companyView";
	}
	
	//添加公司信息--视图
	@RequestMapping(value = "/addComView",method = RequestMethod.GET)
	public String addCompanyView() {
		
		return "customer/addfactory";
	}
	@RequestMapping(value = "/addComView",method = RequestMethod.POST)
	public String addCompany(@ModelAttribute("comp")Company c) {
		cs.addCompany(c);
		return "forward:/companyView";
	}
	
	//修改公司信息
	@RequestMapping(value = "/updateComView",method = RequestMethod.GET)
	public ModelAndView updateUserView(ModelAndView mav) {
		String str=request.getParameter("comid");
		mav.addObject("updatecomId",str);
		mav.setViewName("customer/updatafactory");
		
		return mav;
	}
	//修改公司信息
	@RequestMapping(value = "/updateComView",method = RequestMethod.POST)
	public String updateCom(@ModelAttribute("com")Company c) {
		cs.updateCompany(c);
		return "forward:/companyView";
	}
	
	//客户视图
	@RequestMapping(value = "/customerView")
	public String showCustomer(Model model,@RequestParam(defaultValue = "1") Integer pageNum) {
		PageInfo<Customer> pageInfo=initData.initCustomerView(pageNum);;
		model.addAttribute("pageInfo",pageInfo);
		return "customer/listcustomer";
	}
	
	//根据条件查询公司
	@RequestMapping(value = "/queryComByCondition",method = RequestMethod.POST)
	public String queryComByCondition(@ModelAttribute("cus")Company c,Model model,@RequestParam(defaultValue = "1") Integer pageNum) {
		PageInfo<Company> pageInfo=initData.conditionQueryCompany(pageNum, c);
		model.addAttribute("pageInfo",pageInfo);
		return "customer/listfactory";
	}
	
	//根据条件查询客户
	@RequestMapping(value = "/conditionQuery",method = RequestMethod.POST)
	public String showCustomers(@ModelAttribute("cus")Customer c,Model model,@RequestParam(defaultValue = "1") Integer pageNum) {
		PageInfo<Customer> pageInfo=initData.conditionQueryCustomer(pageNum, c);
		model.addAttribute("pageInfo",pageInfo);
		return "customer/listcustomer";
	}
	
	//添加客户页面
	@RequestMapping(value = "/addCustomerView",method = RequestMethod.GET)
	public String addCustomerView() {
		
		return "customer/addcustomer";
	}
	//添加客户
	@RequestMapping(value = "/addCustomerView",method = RequestMethod.POST)
	public String addCustomer(@ModelAttribute("cus")Customer c) {
		cus.addCustomer(c);
		return "forward:/customerView";
	}
	
	//批量删除公司信息
	@RequestMapping(value = "/delCustomers",method = RequestMethod.POST)
	public String delCustomers(@RequestParam("delids")Integer[] delids) {
		cus.deleteCustomers(delids);
		return "forward:/companyView";
	}
	
	//修改客户信息的界面
	@RequestMapping(value = "/updateCusView",method = RequestMethod.GET)
	public ModelAndView updateCustomerView(ModelAndView mav) {
		String str=request.getParameter("cusid");
		mav.addObject("updatecusId",str);
		mav.setViewName("customer/updatacustomer");
		
		return mav;
	}
	//修改客户信息
	@RequestMapping(value = "/updateCusView",method = RequestMethod.POST)
	public String updateCustomer(@ModelAttribute("cus")Customer c) {
		cus.updateCustomerInfo(c);
		return "forward:/customerView";
	}
	
	//回访信息的界面
	@RequestMapping("/visitView")
	public String revisit() {
		initData.initRevisitInfo();
		System.out.println();
		return "customer/visit";
	}
	
	//批量删除回访信息
	@RequestMapping(value = "/delRevisits",method = RequestMethod.POST)
	public String delRevisit(@RequestParam("delids")Integer[] delids) {
		rev.deleteRevisits(delids);
		return "forward:/visitView";
	}
	
	//添加回访记录
	@RequestMapping(value = "/addvisitView",method = RequestMethod.GET)
	public String addRevistiView() {
		return "customer/addvisit";
	}
	
	@RequestMapping(value = "/addvisitView",method = RequestMethod.POST)
	public String addRevisti(@ModelAttribute("rev")Revisit r,Integer cusid) {
		System.out.println(cusid+" "+r.getVdate());
		rev.insertRevisits(r, cusid);
		return "forward:/visitView";
	}
	
	//根据条件查询回访顾客
	@RequestMapping(value = "/selectRevisitsByCondition")
	public String Sting(String vdate,String cusname) {
		initData.conditionQueryVisit(vdate, cusname);
		return"customer/visit";
	}
	
}
