package com.lwk.bysj.util;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lwk.bysj.pojo.SysLog;
import com.lwk.bysj.pojo.User;
import com.lwk.bysj.service.SysLogService;
import com.lwk.bysj.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class InitDataView {

    @Autowired
    private UserService userService;

    @Autowired
    private SysLogService sysLogService;

    public Session getSession(){
        Subject subject = SecurityUtils.getSubject();
        Session session=subject.getSession();
        return session;
    }
    //初始化用户管理视图
    public PageInfo<User> initUserManageView(int pageNum,int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<User> ulist=userService.showAllUsers();
        PageInfo<User> pageinfo = new PageInfo<User>(ulist);

        getSession().setAttribute("ulist",ulist);
        return pageinfo;
    }

    public PageInfo<User> initLockerUserView(int pageNum,int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<User> ulist=userService.LockedUsers();
        PageInfo<User> pageinfo = new PageInfo<User>(ulist);

        getSession().setAttribute("ulist",ulist);
        return pageinfo;
    }

    public PageInfo<User> initUnLockerUserView(int pageNum,int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<User> ulist=userService.UnLockedUsers();
        PageInfo<User> pageinfo = new PageInfo<User>(ulist);

        getSession().setAttribute("ulist",ulist);
        return pageinfo;
    }

    public PageInfo<User> searchUserByCondition(int pageNum,int pageSize,User u) {
        PageHelper.startPage(pageNum,pageSize);
        List<User> ulist=userService.searchByCondition(u);
        PageInfo<User> pageinfo = new PageInfo<User>(ulist);

        getSession().setAttribute("ulist",ulist);
        return pageinfo;
    }

    public PageInfo<SysLog> searchUserByCondition(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<SysLog> sysLogs=sysLogService.selectAllLog();
        PageInfo<SysLog> pageinfo = new PageInfo<SysLog>(sysLogs);

        getSession().setAttribute("sysLogs",sysLogs);
        return pageinfo;
    }
}
