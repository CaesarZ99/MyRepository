package com.lwk.bysj.service.impl;

import com.lwk.bysj.mapper.RoleMapper;
import com.lwk.bysj.pojo.User;
import com.lwk.bysj.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    RoleMapper rm;

    @Override
    public void addRoleToNewUser(User u) {
        rm.insertUserRolrByid(u);
    }
}
