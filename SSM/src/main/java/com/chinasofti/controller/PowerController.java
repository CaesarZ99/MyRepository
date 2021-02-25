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

import com.chinasofti.pojo.Power;
import com.chinasofti.pojo.Role;
import com.chinasofti.service.PowerService;
import com.chinasofti.service.RoleService;
import com.chinasofti.util.InitData;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class PowerController {

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
	
	//权限主页面
	@RequestMapping(value = "/powerView")
	public String powerView() {
		initData.initPowerView();
		return "system/listpur";
	}
	//去修改权限界面
	@RequestMapping(value = "/updatepur",method = RequestMethod.GET)
	public ModelAndView updateUserView(ModelAndView mav) {
		String str=request.getParameter("powerid");
		mav.addObject("updatepowerId",str);
		mav.setViewName("system/updatepur");
		
		return mav;
	}
	
	//实现修改功能
	@RequestMapping(value = "/updatepur",method = RequestMethod.POST)
	public String updatePower(@ModelAttribute("power")Power p) {
		ps.updatePower(p);
		return "forward:/powerView";
	}
	
	//批量删除和添加
	@RequestMapping(value = "/delpowers")
	public String name(@RequestParam("delids")Integer[] delids,String sub,@ModelAttribute("power")Power power) {
		if ("删除".equals(sub)) {//sub里存放着“添加”或者“删除”
			ps.delPowers(delids);
		}else {
			ps.addPower(power);
		}
		return "forward:/powerView";
	}
}
