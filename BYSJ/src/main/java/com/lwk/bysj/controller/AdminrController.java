package com.lwk.bysj.controller;

import com.github.pagehelper.PageInfo;
import com.lwk.bysj.exception.ErrorConstant;
import com.lwk.bysj.pojo.User;
import com.lwk.bysj.service.SysLogService;
import com.lwk.bysj.service.UserService;
import com.lwk.bysj.util.InitDataView;
import com.lwk.bysj.util.JsonResult;
import com.lwk.bysj.util.MyLog;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
@RequestMapping("adminCtrl")
public class AdminrController {

	@Autowired
	private InitDataView idv;

    @Autowired
    private UserService us;
 
    @Autowired
	private HttpServletRequest request;
    
    @Autowired
	private HttpServletResponse response;

    @Autowired
	private SysLogService sysLogService;


    //管理员界面的所有用户信息
    @RequestMapping(value = "/yhgl",method = RequestMethod.GET)
	public ModelAndView yhgl(Model m,@RequestParam(defaultValue = "1") Integer pageNum
							   ,@RequestParam(defaultValue = "5") Integer pageSize){
		PageInfo<User> pageInfo=idv.initUserManageView(pageNum,pageSize);
		m.addAttribute("pageInfo",pageInfo);
    	return new ModelAndView("admin/userList");
	}

	//查询冻结的用户
	@RequestMapping(value = "/locked",method = RequestMethod.GET)
	public ModelAndView locked(Model m,@RequestParam(defaultValue = "1") Integer pageNum
			,@RequestParam(defaultValue = "5") Integer pageSize){
		PageInfo<User> pageInfo=idv.initLockerUserView(pageNum,pageSize);
		m.addAttribute("pageInfo",pageInfo);
		return new ModelAndView("admin/userList");
	}

	//查询没有冻结的用户
	@RequestMapping(value = "/unLocked",method = RequestMethod.GET)
	public ModelAndView unlocked(Model m,@RequestParam(defaultValue = "1") Integer pageNum
			,@RequestParam(defaultValue = "5") Integer pageSize){
		PageInfo<User> pageInfo=idv.initUnLockerUserView(pageNum,pageSize);
		m.addAttribute("pageInfo",pageInfo);
		return new ModelAndView("admin/userList");
	}

	//注销登录
	@RequestMapping(value = "/quit" ,method = RequestMethod.GET )
	public ModelAndView quitAccount() {
		Subject subject = SecurityUtils.getSubject();
		subject.logout();
		return new ModelAndView("normal/index");
	}

	//管理员重置用户的密码
	@MyLog("管理员重置用户密码")
	@RequestMapping(value = "/acup",method = RequestMethod.POST)
	@ResponseBody
	public JsonResult adminChangeUserPwd(int uid,String pwd){
		us.adminChangeUserPwd(uid, DigestUtils.md5DigestAsHex(pwd.getBytes()));

    	return new JsonResult(JsonResult.SUCCESS,null, ErrorConstant.RePssword.REPWD_SUCCESS);
	}

	//冻结用户
	@MyLog("管理员冻结违规用户")
	@RequestMapping(value = "/banUser",method = RequestMethod.POST)
	@ResponseBody
	public JsonResult banUser(int uid){
    	us.adminBanUserById(uid);
    	return new JsonResult(JsonResult.SUCCESS,null, ErrorConstant.AdminCz.BAN_USER);
	}

	//解除冻结用户
	@MyLog("管理员解除冻结违规用户")
	@RequestMapping(value = "/unBanUser",method = RequestMethod.POST)
	@ResponseBody
	public JsonResult unBanUser(int uid){
		us.adminUNbanUserById(uid);
		return new JsonResult(JsonResult.SUCCESS,null, ErrorConstant.AdminCz.UNBAN_USER);
	}

	//管理员登陆
	@RequestMapping(value = "/adminLogin",method = RequestMethod.POST)
	@ResponseBody
	@MyLog("管理员登陆")
	public JsonResult adminLogin(boolean rememberMe, String account, String password) {
		//获取当前的用户
		String cPassword = us.checkPassword(account);//先通过用户名去数据库查找密码
		if (password != cPassword && !password.equals(cPassword)) {//页面输入没加密的密码，给其加密
			password = DigestUtils.md5DigestAsHex(password.getBytes());
		}
		User u = us.checkLogin(account, password);//通过用户名和加密的密码查找用户

		UsernamePasswordToken token = new UsernamePasswordToken(account, password, rememberMe);
		Subject subject = SecurityUtils.getSubject();
		try {
			if (u!= null) {
				if (!"管理员".equals(u.getRole().getRolename())){
					return new JsonResult(JsonResult.ERROR, null, "user");
				}
			}
			subject.login(token);//执行登录，没有异常就成功
			subject.getSession().setAttribute("user", u);//讲user存入shiro的session
			return new JsonResult(JsonResult.SUCCESS, u, "登陆成功");
		} catch (UnknownAccountException | IncorrectCredentialsException e) {//用户名不存在
			return new JsonResult(JsonResult.ERROR, null, ErrorConstant.UserLogin.USERNAME_PASSWORD_ERROR);
		} //密码不存在
		catch (LockedAccountException e) {
			return new JsonResult(JsonResult.ERROR, null, ErrorConstant.UserLogin.USER_ACCOUNT_BANNED);
		}

	}

	@RequestMapping(value = "/yhgl/search",method = RequestMethod.GET)
	public ModelAndView search(Model m,@RequestParam(defaultValue = "1") Integer pageNum
			,@RequestParam(defaultValue = "5") Integer pageSize,
							   @ModelAttribute User user){
    	PageInfo pageInfo=idv.searchUserByCondition(pageNum,pageSize,user);
		m.addAttribute("pageInfo",pageInfo);
    	return new ModelAndView("/admin/userList");
	}


	@RequestMapping(value = "/syslog",method = RequestMethod.GET)
	public ModelAndView syslog(Model m,@RequestParam(defaultValue = "1") Integer pageNum
			,@RequestParam(defaultValue = "5")Integer pageSize){
		PageInfo pageInfo=idv.searchUserByCondition(pageNum,pageSize);
		m.addAttribute("pageInfo",pageInfo);
    	return new ModelAndView("/admin/syslog");
	}

	@MyLog("删除用户")
	@RequestMapping(value = "/deleteUsers",method = RequestMethod.POST)
	public String delete(@RequestParam(value = "delids",defaultValue = "-1")Integer[] delids){
		if (delids!=null&&delids.length>0){
			us.deleteByUserIds(delids);
		}
    	return "redirect:/adminCtrl/yhgl";
	}

	@MyLog("删除日志")
	@RequestMapping(value = "/deleteLogs",method = RequestMethod.POST)
	public String deleteLogs(@RequestParam(value = "delids",defaultValue = "-1")Integer[] delids){
		if (delids!=null&&delids.length>0){
			sysLogService.deleteByLogIds(delids);
		}
		return "redirect:/adminCtrl/syslog";
	}


}
