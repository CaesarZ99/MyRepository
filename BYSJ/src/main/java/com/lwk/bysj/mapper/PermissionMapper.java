package com.lwk.bysj.mapper;

import com.lwk.bysj.pojo.Permission;
import com.lwk.bysj.pojo.User;

import java.util.Set;

public interface PermissionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Permission record);

    int insertSelective(Permission record);
    Set<String> selectPermsByCurrentUserAccount(String account);
    Permission selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Permission record);

    int updateByPrimaryKey(Permission record);
}