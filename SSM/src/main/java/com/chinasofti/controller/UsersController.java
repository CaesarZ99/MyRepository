package com.chinasofti.controller;


import java.lang.reflect.Array;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.pojo.Power;
import com.chinasofti.pojo.Role;
import com.chinasofti.pojo.Users;
import com.chinasofti.service.PowerService;
import com.chinasofti.service.RoleService;
import com.chinasofti.service.UsersService;
import com.chinasofti.util.InitData;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class UsersController {
	@Autowired
	private UsersService us;
	public void setUs(UsersService us) {
		this.us = us;
	}

	@Autowired
	private HttpServletRequest request;
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	@Autowired
	private RoleService rs;
	public void setRs(RoleService rs) {
		this.rs = rs;
	}
	
	@Autowired
	private PowerService ps;
	public void setPs(PowerService ps) {
		this.ps = ps;
	}
	
	@Autowired
	private InitData initData;
	public void setInitData(InitData initData) {
		this.initData = initData;
	}
	
	//登录界面
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String login(){
		
		return "login";
	}
	
	//登录成功后-->主页面
	@RequestMapping(value = "/login",method = RequestMethod.POST)
	public String checkLogin(Model model,
			@RequestParam(defaultValue = "1") Integer pageNum
			,String username,String password) {
		Users u=us.checkLogin(username, password);
		String resource="";
		if (u!=null) {
			resource=u.getR().getP().getPowername();//用于index界面左侧显示列表
			request.getSession().setAttribute("resource", resource);
			//初始化视图
			PageInfo<Users> pageInfo=initData.initUserView(pageNum);
			model.addAttribute("pageInfo",pageInfo);
			return "index";
		}else {
			System.out.println("null");
		}
		return "login";
	}
	
	//主页面用户管理的用户信息
	@RequestMapping(value = "/userInfoView")
	public String userInfoView(Model model,@RequestParam(defaultValue = "1") Integer pageNum) {
		PageInfo<Users> pageInfo=initData.initUserView(pageNum);
		model.addAttribute("pageInfo",pageInfo);
		System.out.println(pageNum);
		return "system/listuser";
	}
	
	//更新用户的页面
	@RequestMapping(value = "/updateUser",method = RequestMethod.GET)
	public ModelAndView updateUserView(ModelAndView mav) {
		String str=request.getParameter("str");
		mav.addObject("updateuserId",str);
		mav.setViewName("system/updateuser");
		
		return mav;
	}
	//更新用户
	@RequestMapping(value = "/updateUser",method = RequestMethod.POST)
	public String updateUser(@ModelAttribute("u")Users u,String roleid) {
		us.updateUserById(u, roleid);
		
		return "forward:/userInfoView";
	}
	
	//批量删除用户
	@RequestMapping("/delusers")
	public String delUsers(@RequestParam("delids")Integer[] delids) {
		us.deleteAllUser(delids);
		return"forward:/userInfoView";
	}
	//添加用户界面
	@RequestMapping(value = "/adduser")
	public String addUserView() {
		return "system/adduser";
	}
	
	//实现添加用户
	@RequestMapping(value = "/adduser",method = RequestMethod.POST)
	public String adduser(@ModelAttribute("u")Users u,String roleid) {
		us.addtUser(u, roleid);
		return "forward:/userInfoView";
	}
}
