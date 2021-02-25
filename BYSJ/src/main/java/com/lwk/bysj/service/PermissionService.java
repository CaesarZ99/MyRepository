package com.lwk.bysj.service;

import com.lwk.bysj.pojo.Permission;
import com.lwk.bysj.pojo.User;

import java.util.Set;

public interface PermissionService {

    Set<String> showALLCurrentUserPerms(String account);
}
