package com.lwk.bysj.service;

import com.lwk.bysj.pojo.User;
import org.springframework.validation.annotation.Validated;

import java.util.List;

public interface UserService {
    User checkLogin(String account,String password);//在登录页面提交账号密码，查询用户，校验信息
    String checkPassword(String account);
    void changePwd(Integer uid,String newPwd);
    List<User> showAllUsers();
    User findPwd(String account,String email,String userName,String idNum);
    void rePwd(User user, String newPWd);
    void register(User u);
    User checkAccount(String account);
    User checkInfoByToken(String account);
    void adminChangeUserPwd(int uid ,String pwd);
    void adminBanUserById(int uid);
    void adminUNbanUserById(int uid);
    List<User> LockedUsers();
    List<User> UnLockedUsers();
    List<User> searchByCondition(User u);
    //--批量删除
    void deleteByUserIds(Integer[] delids);
}
