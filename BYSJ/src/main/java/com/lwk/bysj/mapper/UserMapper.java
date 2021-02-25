package com.lwk.bysj.mapper;

import com.lwk.bysj.pojo.User;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Integer uid);

    //用户注册
    int insert(User record);

    //(注册)检验账号是否重复
    User selectAccount(String account);

    //管理员重置用户的密码操作
    void adminChangeUserPwd(int uid,String pwd);

    //用户冻结和解除冻结
    void adminBanUserById(int uid);
    void adminUNbanUserById(int uid);

    int insertSelective(User record);

    User selectByAccount(String account);

    //通过账号密码查找用户(登录)
    User selectByAccountAndPassword(String account,String password);

    //通过账号查找密码(验证登录)
    String selectPasswordByAccount(String account);

    //查询全部用户信息
    List<User> selectAllUsers();

    //通过主键修改密码
    void updatePwdByByPrimary(Integer uid,String newPwd);

    //找回密码（通过身份信息）
    User selectPwdByInfo(String account,String email,String userName,String idNum);

    //用户找回密码（修改）
    void updatePwdById(User u,String newPwd);

    //查询未冻结用户
    List<User> selectUnLockUser();
    //查询已冻结用户
    List<User> selectLocedkUser();

    //通过用户管理页面搜索框搜索对应用户
    List<User> selectByCondition(User u);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    //批量删除用户,先要删除中间表的连接数据
    void deleteTbUr(Integer[] delids);
    void deleteByUserIds(Integer[] delids);
}