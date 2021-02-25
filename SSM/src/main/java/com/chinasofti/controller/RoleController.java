package com.chinasofti.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.mapper.PowerMapper;
import com.chinasofti.pojo.Power;
import com.chinasofti.pojo.Role;
import com.chinasofti.pojo.Users;
import com.chinasofti.service.PowerService;
import com.chinasofti.service.RoleService;
import com.chinasofti.util.InitData;
import com.github.pagehelper.PageInfo;

@Controller
public class RoleController {

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

	// 提交修改用户的角色名
	@RequestMapping(value = "/roleView", method = RequestMethod.GET)
	public ModelAndView roleView() {
		ModelAndView mav = new ModelAndView();
		String str = request.getParameter("str");
		System.out.println(str);
		mav.addObject("updateuserId", str);
		mav.setViewName("system/updateuser");
		return mav;
	}

	// 去role的jsp界面
	@RequestMapping(value = "/toroleview")
	public String toRoleView(Model model,@RequestParam(defaultValue = "1") Integer pageNum) {
		PageInfo<Role> pageInfo=initData.initRoleView(pageNum);
		model.addAttribute("pageInfo",pageInfo);
		return "system/listrole";
	}
	
	//去修改角色界面
	@RequestMapping(value = "/updateRole",method = RequestMethod.GET)
	public ModelAndView updateRoleView(ModelAndView mav) {
		String str=request.getParameter("roleid");
		mav.addObject("updateRoleId",str);
		mav.setViewName("system/updaterole");
		return mav;
	}
	
	//更新角色
	@RequestMapping(value = "/updateRole",method = RequestMethod.POST)
	public String updateUser(@ModelAttribute("r")Role r,String powerid) {
		rs.updateByPrimaryKey(r, powerid);
		
		return "forward:/toroleview";
	}
	
	//批量删除role
	@RequestMapping(value = "/delroles",method = RequestMethod.POST)
	public String delUsers(@RequestParam("delids")Integer[] delids) {
		rs.deleteAllRoles(delids);
		return "forward:/toroleview";
	}
	
	//添加角色
	@RequestMapping(value = "/addrole",method = RequestMethod.GET)
	public String addRole() {
		
		return "system/addrole";
	}
	
	//实现添加角色
	@RequestMapping(value = "/addrole",method = RequestMethod.POST)
	public String addRoleImpl(@ModelAttribute("role")Role r ,int powerid) {
		rs.addRole(r, powerid);
		return"forward:/toroleview";
	}
	
}
