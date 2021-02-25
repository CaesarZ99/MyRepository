package com.lwk.bysj.util;

import com.alibaba.druid.util.StringUtils;
import com.alibaba.fastjson.JSON;
import com.lwk.bysj.pojo.SysLog;
import com.lwk.bysj.pojo.User;
import com.lwk.bysj.service.SysLogService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

/**
 * @Author: WenKang Liu
 * @Date: 2021/1/21 19:02
 */
@Aspect
@Component
public class SysLogAspect {


    @Autowired
    private SysLogService sysLogService;

    @Autowired
    private HttpServletRequest request;

    //定义切点 @Pointcut
    //在注解的位置切入代码
    @Pointcut("@annotation( com.lwk.bysj.util.MyLog)")
    public void logPoinCut() {
    }


    //切面 配置通知
    @After("logPoinCut()")
    public void saveSysLog(JoinPoint joinPoint) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        if(user==null){
            return ;
        }
        //保存日志
        SysLog sysLog = new SysLog();
        sysLog.setUid(user.getUid());
        //从切面织入点处通过反射机制获取织入点处的方法
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        //获取切入点所在的方法
        Method method = signature.getMethod();

        //获取操作
        MyLog myLog = method.getAnnotation(MyLog.class);
        if (myLog != null) {
            String value = myLog.value();
            sysLog.setOperation(value);//保存获取的操作
        }

        //获取请求的类名
        String className = joinPoint.getTarget().getClass().getName();
        //获取请求的方法名
        String methodName = method.getName();
        sysLog.setMethod(className + "." + methodName);

        //请求的参数名称
        Object[] paramNames=signature.getParameterNames();
        //请求的参数
        Object[] args = joinPoint.getArgs();
        Object[] pa=new Object[paramNames.length];
        for (int i=0;i<paramNames.length;i++) {
            if (request.getRequestURI().endsWith("Login")||request.getRequestURI().endsWith("Pwd")){
                args[i]="***";
            }
            if (args[i] instanceof Integer[]){
                pa[i]=paramNames[i]+":"+Arrays.toString(((Integer[])args[i]));
                continue;
            }
            pa[i]=paramNames[i]+":"+args[i];
        }
        //将参数所在的数组转换成json
        String params = JSON.toJSONString(pa);
        sysLog.setParams(params);
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        sysLog.setCreateDate(simpleDateFormat.format(new Date()));
        //获取用户名
        sysLog.setUsername(user.getUserName());
        //获取用户ip地址
        sysLog.setUrl(request.getRequestURI());
        //调用service保存SysLog实体类到数据库
        sysLogService.save(sysLog);
    }

}
