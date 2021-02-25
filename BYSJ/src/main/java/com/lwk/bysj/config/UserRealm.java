package com.lwk.bysj.config;

import com.lwk.bysj.pojo.User;
import com.lwk.bysj.service.PermissionService;
import com.lwk.bysj.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.Set;

public class UserRealm extends AuthorizingRealm {

    @Autowired
    UserService us;
    @Autowired
    PermissionService ps;

    //授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        System.out.printf("授权=>doGetAuthorizationInfo");
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();

        //拿到当前登录的对象
        Subject subject=SecurityUtils.getSubject();
        User currentUser = (User) subject.getPrincipal();
        Set<String> perms=ps.showALLCurrentUserPerms(currentUser.getAccount());
        //设置当前用户的权限
        info.setStringPermissions(perms);
        //当前用户的角色
        info.addRole(currentUser.getRole().getRolename());
        return info;
    }

    //认证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        System.out.printf("认证=>doGetAuthorizationInfo");
        UsernamePasswordToken token= (UsernamePasswordToken) authenticationToken;
        User u=us.checkInfoByToken(token.getUsername());//通过token里的用户信息查询用户
        if (u==null){
            throw new IncorrectCredentialsException();
        }else if (2==u.getState()){//2表示用户被冻结
            throw new LockedAccountException();
        }
        //密码认证shiro做
        return new SimpleAuthenticationInfo(u,u.getPassword(),getName());
    }
}
