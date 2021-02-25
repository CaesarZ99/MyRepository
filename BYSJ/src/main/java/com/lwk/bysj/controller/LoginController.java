package com.lwk.bysj.controller;

import com.lwk.bysj.exception.ErrorConstant;
import com.lwk.bysj.pojo.User;
import com.lwk.bysj.service.RoleService;
import com.lwk.bysj.service.UserService;
import com.lwk.bysj.util.JsonResult;
import com.lwk.bysj.util.MyLog;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("loginCtrl")
public class LoginController {
    @Autowired
    private UserService us;

    @Autowired
    HttpServletRequest request;

    @Autowired
    HttpServletResponse response;

    @Autowired
    RoleService rs;


    //用户修改密码
    @RequestMapping(value = "/updatePwd", method = RequestMethod.POST)
    @MyLog("修改密码")
    public JsonResult updatePwd(String oldPwd, String newPwd, String subPwd) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        if (!oldPwd.equals(user.getPassword())) {//用户输入非加密的密码，给它加密然后和数据库的密码作比较
            oldPwd = DigestUtils.md5DigestAsHex(oldPwd.getBytes());
        }
        if (!oldPwd.equals(user.getPassword())) {
            return new JsonResult(JsonResult.ERROR, null, ErrorConstant.UpdatePwd.OLD_PWD_FALSE);
        }
        if (!newPwd.equals(subPwd)) {
            return new JsonResult(JsonResult.ERROR, null, ErrorConstant.UpdatePwd.SUB_PWD_FALSE);
        }
        if (newPwd.equals("")) {
            return new JsonResult(JsonResult.ERROR, null, ErrorConstant.UpdatePwd.EMPTY_PWD);
        }
        us.changePwd(user.getUid(), DigestUtils.md5DigestAsHex(newPwd.getBytes()));
        user.getRole().setRolename(user.getRolename());
        return new JsonResult(JsonResult.SUCCESS, user, "修改成功");
    }

    //ajax验证登录信息，非管理员登陆
    @RequestMapping(value = "/userLogin", method = RequestMethod.POST)
    public JsonResult userLogin(boolean rememberMe, String account, String password, String code) {
        //获取当前的用户
        String cPassword = us.checkPassword(account);//先通过用户名去数据库查找密码
        if (!password.equals(cPassword)) {//页面输入没加密的密码，给其加密
            password = DigestUtils.md5DigestAsHex(password.getBytes());
        }
        User u = us.checkLogin(account, password);//通过用户名和加密的密码查找用户

        UsernamePasswordToken token = new UsernamePasswordToken(account, password, rememberMe);
        Subject subject = SecurityUtils.getSubject();
        try {
            if (!code.equalsIgnoreCase((String) (request.getSession().getAttribute("VerifyCode")))) {
                return new JsonResult(JsonResult.ERROR, null, "验证码错误");
            }
            System.out.println(u.getRole().getRolename().equals("普通用户"));
            if (!u.getRole().getRolename().equals("医生")&!u.getRole().getRolename().equals("普通用户")) {
                return new JsonResult(JsonResult.ERROR, null, "admin");
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

    //用户找回密码，提交验证信息
    @RequestMapping(value = "/findPwd", method = RequestMethod.POST)
    public JsonResult findPwd(String account, String email, String userName, String idNum) {
        User user = us.findPwd(account, email, userName, idNum);
        if (user != null) {
            //身份认证成功后添加session信息，避免拦截之后的重置密码页面
            request.getSession().setAttribute("findPwdMsg", user);
            return new JsonResult(JsonResult.SUCCESS, null, ErrorConstant.RePssword.USER_INFO_TRUE);
        }
        return new JsonResult(JsonResult.ERROR, null, ErrorConstant.RePssword.USER_INFO_FALSE);
    }

    //用户找回密码(重置密码)
    @RequestMapping(value = "/rePwd", method = RequestMethod.POST)
    public JsonResult rePwd(String newPwd, String subPwd) {
        User u = (User) request.getSession().getAttribute("findPwdMsg");
        if (u == null) {
            return new JsonResult(JsonResult.ERROR, null, ErrorConstant.RePssword.NO_INFO_SUBMIT);
        }
        if (!newPwd.equals(subPwd)) {
            return new JsonResult(JsonResult.ERROR, null, ErrorConstant.RePssword.SUB_PWD_FALSE);
        }
        us.rePwd(u, DigestUtils.md5DigestAsHex(newPwd.getBytes()));
        request.getSession().removeAttribute("findPwdMsg");
        return new JsonResult(JsonResult.SUCCESS, null, ErrorConstant.RePssword.REPWD_SUCCESS);
    }

    //用户注册
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public JsonResult register(@ModelAttribute("u") @Valid User u, BindingResult bindingResult) throws Exception {

        if (bindingResult.hasErrors()) {
            List<ObjectError> allErrors = bindingResult.getAllErrors();
            return new JsonResult(JsonResult.ERROR, allErrors, ErrorConstant.UserRegist.USER_REGIST_fail);
        }
        u.setPassword(DigestUtils.md5DigestAsHex(u.getPassword().getBytes()));
        us.register(u);
        System.out.println(u.getUid());
        rs.addRoleToNewUser(u);
        return new JsonResult(JsonResult.SUCCESS, null, ErrorConstant.UserRegist.USER_REGIST_SUCCESS);
    }

    //检查注册账号是否重复
    @RequestMapping(value = "/JYYHM", method = RequestMethod.POST)
    public JsonResult jyyhm(String account) {
        if (account.equals("")) {
            return new JsonResult(201, null, ErrorConstant.RegistCheckAccount.REGIST_ACCOUNT_ISEMPTY);
        }
        User user = us.checkAccount(account);
        if (user != null) {
            return new JsonResult(201, null, ErrorConstant.RegistCheckAccount.REGIST_ACCOUNT_REPEAT);
        }
        return new JsonResult(200, null, ErrorConstant.RegistCheckAccount.REGIST_ACCOUNT_TRUE);
    }

    @RequestMapping(value = "/normalLogin", method = RequestMethod.POST)
    public Object normalLogin() {
        Subject subject = SecurityUtils.getSubject();
        User u = (User) subject.getPrincipal();
        if (u != null) {//通过用户类型跳转到对应的页面
            return new ModelAndView("normal/index");
        }
        return null;
    }

}
