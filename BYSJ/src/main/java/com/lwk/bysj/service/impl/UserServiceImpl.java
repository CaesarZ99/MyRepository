package com.lwk.bysj.service.impl;

import com.lwk.bysj.mapper.UserMapper;
import com.lwk.bysj.pojo.User;
import com.lwk.bysj.service.UserService;
import org.hibernate.annotations.Cache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.RollbackException;
import java.util.List;

@Service
@Transactional(propagation = Propagation.REQUIRED,rollbackFor = RollbackException.class)
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper um;



    @Override
    public User checkLogin(String account, String password) {
        return um.selectByAccountAndPassword(account, password);
    }

    @Override
    public String checkPassword(String account) {
        // TODO Auto-generated method stub
        return um.selectPasswordByAccount(account);
    }

    @Override
    public void changePwd(Integer uid, String newPwd) {
        // TODO Auto-generated method stub
        um.updatePwdByByPrimary(uid, newPwd);
    }
 
    @Override
    public List<User> showAllUsers() {
        return um.selectAllUsers();
    }

    @Override
    public User findPwd(String account, String email, String userName, String idNum) {
        return um.selectPwdByInfo(account,email,userName,idNum);
    }

    @Override
    public void rePwd(User user, String newPWd) {
        um.updatePwdById(user,newPWd);
    }

    @Override
    public void register(User u) {
        um.insert(u);
    }

    @Override
    public User checkAccount(String account) {
        return um.selectAccount(account);
    }

    @Override
    public User checkInfoByToken(String account) {
        return um.selectByAccount(account);
    }

    @Override
    public void adminChangeUserPwd(int uid, String pwd) {
        um.adminChangeUserPwd(uid,pwd);
    }

    @Override
    public void adminBanUserById(int uid) {
        um.adminBanUserById(uid);
    }

    @Override
    public void adminUNbanUserById(int uid) {
        um.adminUNbanUserById(uid);
    }

    @Override
    public List<User> LockedUsers() {
        return um.selectLocedkUser();
    }

    @Override
    public List<User> UnLockedUsers() {
        return um.selectUnLockUser();
    }

    @Override
    public List<User> searchByCondition(User u) {
        return um.selectByCondition(u);
    }

    @Override
    public void deleteByUserIds(Integer[] delids) {
        um.deleteTbUr(delids);
        um.deleteByUserIds(delids);
    }
}
