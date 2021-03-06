package com.lwk.bysj.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lwk.bysj.pojo.VerifyCode;
import com.lwk.bysj.service.IVerifyCodeGen;
import com.lwk.bysj.service.impl.SimpleCharVerifyCodeGenImpl;
import com.wordnik.swagger.annotations.ApiOperation;

@RestController
public class Vcode {
	@ApiOperation("验证码")
    @GetMapping("/verifyCode")
    public static void verifyCode(HttpServletRequest request, HttpServletResponse response) {
        IVerifyCodeGen iVerifyCodeGen =new SimpleCharVerifyCodeGenImpl();

        try {
            //设置长宽
            VerifyCode verifyCode = iVerifyCodeGen.generate(80, 28);
            String code = verifyCode.getCode();
            //将VerifyCode绑定session
            request.getSession().setAttribute("VerifyCode", code);
            //设置响应头
            response.setHeader("Pragma", "no-cache");
            //设置响应头
            response.setHeader("Cache-Control", "no-cache");
            //在代理服务器端防止缓冲
            response.setDateHeader("Expires", 0);
            //设置响应内容类型
            response.setContentType("image/jpeg");
            response.getOutputStream().write(verifyCode.getImgBytes());
            response.getOutputStream().flush();
        } catch (IOException e) {

        }
    }
}
