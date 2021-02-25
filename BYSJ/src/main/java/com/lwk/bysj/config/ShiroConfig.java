package com.lwk.bysj.config;

import at.pollux.thymeleaf.shiro.dialect.ShiroDialect;
import org.apache.shiro.codec.Base64;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.mgt.CookieRememberMeManager;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.servlet.SimpleCookie;
import org.apache.shiro.web.session.mgt.DefaultWebSessionManager;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.LinkedHashMap;
import java.util.Map;

@Configuration
public class ShiroConfig {

    @Bean
    public ShiroFilterFactoryBean shiroFilterFactoryBean(@Qualifier("securityManager") DefaultWebSecurityManager defaultWebSecurityManager) {
        ShiroFilterFactoryBean bean = new ShiroFilterFactoryBean();
        //设置安全管理器
        bean.setSecurityManager(defaultWebSecurityManager);
        //添加shiro内置过滤器
        /*
            anon 无需认证就能访问
            authc 必须认证才能访问
            user 必须使用记住我功能才能访问
            perms 拥有对某个资源的权限才能访问
        */
        Map<String, String> filterMap = new LinkedHashMap<>();
        filterMap.put("/adminCtrl/quit", "perms[user:quit]");//注销功能 拥有user:quit权限(游客无法通过url访问)
        filterMap.put("/adminCtrl/adminLogin", "anon");//不拦截检查登录接口
        filterMap.put("/adminCtrl/yhgl", "perms[admin:all]");//不拦截检查登录接口
        filterMap.put("/adminCtrl/*", "perms[admin:all]");//管理员页面，拥有admin:all权限才能访问
        filterMap.put("/adminMenu", "perms[admin:all]");//管理员页面，拥有admin:all权限才能访问
        filterMap.put("/adminLoginView", "anon");//不拦截检查登录页面
        filterMap.put("/findPwdView", "anon");//不拦截检查登录页面
        filterMap.put("/loginCtrl/*", "anon");//logincontroller下的全部接口方法，全部可访问
        filterMap.put("/registerView", "anon");//找回密码页面，全部可访问
        filterMap.put("/", "anon");//主页面：全部可访问
        filterMap.put("/repassword", "anon");//主页面：全部可访问
        filterMap.put("/normal/*", "anon");//平常页面：全部可访问
        filterMap.put("/ptuser/*", "anon");//普通用户下的页面：可访问未登录可看见的页面
        filterMap.put("/fonts/*", "anon");//静态资源*
        filterMap.put("/js/*", "anon");
        filterMap.put("/sta_admin/**", "anon");
        filterMap.put("/css/*", "anon");
        filterMap.put("/error/*", "anon");
        filterMap.put("/image/*", "anon");//静态资源*
        filterMap.put("/verifyCode", "anon");//不拦截验证码接口
        filterMap.put("/**", "authc");//拦截所有，认证后可访问
        bean.setUnauthorizedUrl("/401");//因权限被拦截跳转到401页面
        bean.setFilterChainDefinitionMap(filterMap);
        bean.setLoginUrl("/toLogin");//默认登录页面
        return bean;
    }

    /**
     * 配置核心安全事务管理器
     *
     * @param userRealm
     * @return
     */
    @Bean(name = "securityManager")
    public DefaultWebSecurityManager getDefaultWebSecurityManager(@Qualifier("userRealm") UserRealm userRealm) {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        //关联UserRealm
        securityManager.setRealm(userRealm);
        securityManager.setRememberMeManager(rememberMeManager());
        securityManager.setSessionManager(mySessionManager());
        return securityManager;
    }

    /**
     * 配置shiro 的session管理 相当于 HttpServletSession
     *
     *
     * @return
     */
    @Bean
    public DefaultWebSessionManager mySessionManager(){
        DefaultWebSessionManager defaultSessionManager = new DefaultWebSessionManager();
        defaultSessionManager.setSessionValidationSchedulerEnabled(false);
        //将sessionIdUrlRewritingEnabled属性设置成false
        defaultSessionManager.setSessionIdUrlRewritingEnabled(false);
        defaultSessionManager.setGlobalSessionTimeout(1000*60*60*24);
        return defaultSessionManager;
    }
    //创建realm对象，自定义类
    @Bean(name = "userRealm")
    public UserRealm userRealm() {
        return new UserRealm();
    }

    /**
     * cookie管理对象;记住我功能,rememberMe管理器
     *
     * @return
     */
    @Bean
    public CookieRememberMeManager rememberMeManager() {
        CookieRememberMeManager cookieRememberMeManager = new CookieRememberMeManager();
        cookieRememberMeManager.setCookie(simpleCookie());
        //rememberMe cookie加密的密钥 建议每个项目都不一样 默认AES算法 密钥长度(128 256 512 位)
        cookieRememberMeManager.setCipherKey(Base64.decode("4AvVhmFLUs0KTA3Kprsdag=="));
        return cookieRememberMeManager;
    }

    /**
     * FormAuthenticationFilter 过滤器 过滤记住我
     *
     * @return
     */
    @Bean
    public FormAuthenticationFilter formAuthenticationFilter() {
        FormAuthenticationFilter formAuthenticationFilter = new FormAuthenticationFilter();
        //对应前端的checkbox的name = rememberMe
        formAuthenticationFilter.setRememberMeParam("rememberMe");
        return formAuthenticationFilter;
    }

    /**
     * cookie对象;会话Cookie模板 ,默认为: JSESSIONID 问题: 与SERVLET容器名冲突,重新定义为sid或rememberMe，自定义
     *
     * @return
     */
    @Bean
    public SimpleCookie simpleCookie() {
        //这个参数是cookie的名称，对应前端的checkbox的name = rememberMe
        SimpleCookie simpleCookie = new SimpleCookie("rememberMe");
        //setcookie的httponly属性如果设为true的话，会增加对xss防护的安全系数。它有以下特点：
        //setcookie()的第七个参数
        //设为true后，只能通过http访问，javascript无法访问
        //防止xss读取cookie
        simpleCookie.setHttpOnly(true);
        simpleCookie.setPath("/");
        simpleCookie.setMaxAge(60 * 60 * 24 * 15);
        return simpleCookie;
    }

    /* shiro方言  支持shiro标签
     * @return
     */
    @Bean
    public ShiroDialect shiroDialect() {
        return new ShiroDialect();
    }

}
