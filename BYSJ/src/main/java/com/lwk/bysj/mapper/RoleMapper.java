package com.lwk.bysj.mapper;

import com.lwk.bysj.pojo.Role;
import com.lwk.bysj.pojo.User;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Role record);

    int insertSelective(Role record);

    void insertUserRolrByid(User u);

    Role selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
}