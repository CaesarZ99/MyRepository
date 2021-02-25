package com.lwk.bysj.config.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import java.util.concurrent.TimeUnit;

//@Component//登录拦截器（未登录不允许看见某些页面）
public class LoginInterceptor implements HandlerInterceptor {

    @Resource
    RedisTemplate<String,Object> redisTemplate;

    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        Object user = request.getSession().getAttribute("user");
        System.out.println("afterCompletion----" + user + " ::: " + request.getRequestURL());
    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        Object user = request.getSession().getAttribute("user");
        System.out.println("postHandle----" + user + " ::: " + request.getRequestURL());

    }

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Object user = request.getSession().getAttribute("user");
        System.out.println("preHandle----" + user + " ::: " + request.getRequestURL());

        if (user == null) {
            request.getSession().setAttribute("msg","请先登录");
            // 获取request返回页面到登录页
            request.getRequestDispatcher("/").forward(request, response);
            return false;
        }

        return true;
    }
}
