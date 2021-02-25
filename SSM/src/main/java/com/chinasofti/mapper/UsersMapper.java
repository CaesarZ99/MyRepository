package com.chinasofti.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.chinasofti.pojo.Users;

public interface UsersMapper {
    int deleteByPrimaryKey(Integer uid);
    
    //批量删除
    void deleteByUserIds(Integer[] delids);
    
    void insert(@Param("u")Users record,@Param("roleid")String roleid);

    int insertSelective(Users record);

    Users selectByPrimaryKey(Integer uid);
    
    List<Users> selectAllUsers();

    int updateByPrimaryKeySelective(Users record);

    void updateByPrimaryKey(@Param("u")Users u,@Param("roleid")String roleid);
    
    public Users selectByUsernameAndPassword(@Param("name") String username,@Param("pwd") String password);
}