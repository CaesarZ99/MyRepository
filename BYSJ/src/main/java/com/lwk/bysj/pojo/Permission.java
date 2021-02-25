package com.lwk.bysj.pojo;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.io.Serializable;
@JsonIgnoreProperties(ignoreUnknown = true)//json反序列化过滤看不见的属性
public class Permission implements Serializable {

    private static final long serialVersionUID = -4924955727480417403L;
    private Integer id;

    private String permissionId;

    private String permname;

    private String description;

    private String perms;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(String permissionId) {
        this.permissionId = permissionId;
    }

    public String getName() {
        return permname;
    }

    public void setName(String permname) {
        this.permname = permname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPerms() {
        return perms;
    }

    public void setPerms(String perms) {
        this.perms = perms;
    }

    public Permission(Integer id, String permissionId, String permname, String description, String perms) {
        this.id = id;
        this.permissionId = permissionId;
        this.permname = permname;
        this.description = description;
        this.perms = perms;
    }

    public Permission() {
    }
}