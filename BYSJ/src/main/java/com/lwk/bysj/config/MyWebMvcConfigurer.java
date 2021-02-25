package com.lwk.bysj.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MyWebMvcConfigurer implements WebMvcConfigurer {

    /*
    * 配置MVC接口，实现Controller跳转页面
    *
    * @param registy
    *
     */
	@Override
    public void addViewControllers(ViewControllerRegistry registry) {
                registry.addViewController("/toLogin").setViewName("normal/login");
                registry.addViewController("/404").setViewName("error/404");
                registry.addViewController("/401").setViewName("error/401");
                registry.addViewController("/adminMenu").setViewName("admin/Admin_menu");
                registry.addViewController("/adminLoginView").setViewName("admin/login");
                registry.addViewController("/findPwdView").setViewName("normal/findPwd");
                registry.addViewController("/repassword").setViewName("normal/rePassword");
                registry.addViewController("/registerView").setViewName("ptuser/register");
                registry.addViewController("/").setViewName("normal/index");
           }

   /* @Override//拦截去实现拦截登陆
   +
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor())
                .addPathPatterns("/**")//拦截所有
                .excludePathPatterns("/","/repassword","/verifyCode","/register","/JYYHM","/toLogin",
                        "/rePwd","/registerView","/favicon.ico","/checklogin","/findPwdView","/findPwd")//不拦截
                .excludePathPatterns("/js/**","/css/**","/image/**","/fonts/**");//不拦截这些静态文件

    }*/
}
