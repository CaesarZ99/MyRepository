package com.chinasofti.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.chinasofti.pojo.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer roleid);

    void insert(@Param("r")Role record,@Param("powerid")int powerid);
    //批量删除
    void deleteByRoleIds(Integer[] delids);

    int insertSelective(Role record);

    List<Role> selectAllRoles();
    
    void selectByPrimaryKey(Integer roleid);

    //修改权限
    void updateByPrimaryKeySelective(@Param("r")Role r,@Param("powerid")String powerid);

    void updateByPrimaryKey(Integer roleid);
}