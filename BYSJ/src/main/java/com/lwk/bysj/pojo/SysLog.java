package com.lwk.bysj.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * @Author: WenKang Liu
 * @Date: 2021/1/21 19:01
 */
public class SysLog implements Serializable {

    private static final long serialVersionUID = 4718302685522298758L;
    private Integer uid;
    private Integer logid;

    private String username; //用户名

    private String operation; //操作

    private String method; //方法名

    private String params; //参数

    private String url; //ip地址

    private String createDate; //操作时间
    //创建getter和setter方法


    public Integer getLogid() {
        return logid;
    }

    public void setLogid(Integer logid) {
        this.logid = logid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public void setParams(String params) {
        this.params = params;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getUid() {
        return uid;
    }

    public String getUsername() {
        return username;
    }

    public String getOperation() {
        return operation;
    }

    public String getMethod() {
        return method;
    }

    public String getParams() {
        return params;
    }

    public String getUrl() {
        return url;
    }

    public String getCreateDate() {
        return createDate;
    }

    public SysLog(Integer uid, Integer logid, String username, String operation, String method, String params, String url, String createDate) {
        this.uid = uid;
        this.logid = logid;
        this.username = username;
        this.operation = operation;
        this.method = method;
        this.params = params;
        this.url = url;
        this.createDate = createDate;
    }

    public SysLog() {
    }
}
