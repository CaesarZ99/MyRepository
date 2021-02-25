package com.lwk.bysj.service.impl;

import com.lwk.bysj.mapper.PermissionMapper;
import com.lwk.bysj.pojo.Permission;
import com.lwk.bysj.pojo.User;
import com.lwk.bysj.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;

@Service
public class PermissionServiceImpl implements PermissionService {
    @Autowired
    PermissionMapper pm;

    @Override
    public Set<String> showALLCurrentUserPerms(String account) {
        return pm.selectPermsByCurrentUserAccount(account);
    }
}
