package com.chinasofti.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.pojo.Users;
import com.chinasofti.pojo.Ware;
import com.chinasofti.util.InitData;
import com.github.pagehelper.PageInfo;

@Controller
public class WareController {
	@Autowired
	private InitData InitData;
	public void setInitData(InitData initData) {
		InitData = initData;
	}
	
	@Autowired
	private HttpServletRequest request;
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	//仓库信息
	@RequestMapping(value = "/wareInfoView",method = RequestMethod.GET)
	public String wareInfoView(Model model,@RequestParam(defaultValue = "1") Integer pageNum) {
		PageInfo<Ware> pageInfo=InitData.initWareInfoView(pageNum);
		model.addAttribute("pageInfo",pageInfo);
		System.out.println(pageNum);
		return "warehouse/warehouseList";
	}
	
	//修改仓库信息
	@RequestMapping(value = "/updateWare",method = RequestMethod.GET)
	public ModelAndView updateUserView(ModelAndView mav) {
		String str=request.getParameter("wareid");
		mav.addObject("updateWareId",str);
		mav.setViewName("warehouse/updatawarehouse");
		
		return mav;
	}
	
	//库存管理
	@RequestMapping(value = "/stoceView",method = RequestMethod.GET)
	public String stoceView() {
		return "warehouse/stocelist";
	}
	
}
