package com.lwk.bysj.pojo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
@JsonIgnoreProperties(ignoreUnknown = true)//json反序列化过滤看不见的属性
public class Role implements Serializable {

    private static final long serialVersionUID = 3487898548694712072L;
    private Integer id;
    private String rolename;

    private String description;

    private Date createTime;

    private Date updateTime;

    private List<Permission> perms;

    public List<Permission> getPerms() {
        return perms;
    }

    public void setPerms(List<Permission> perms) {
        this.perms = perms;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename == null ? null : rolename.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Role(Integer id, String rolename, String description, Date createTime, Date updateTime, List<Permission> perms) {
        this.id = id;
        this.rolename = rolename;
        this.description = description;
        this.createTime = createTime;
        this.updateTime = updateTime;
        this.perms = perms;
    }

    public Role() {
    }
}