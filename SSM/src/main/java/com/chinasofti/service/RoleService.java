package com.chinasofti.service;

import java.util.List;

import com.chinasofti.pojo.Role;

public interface RoleService {
	public List<Role> showAllRoles();
	
	public void updaRoleById(Integer roleid);
	
	//批量删除
	public void deleteAllRoles(Integer[] delids);
	
	public void updateByPrimaryKey(Role r,String powerid);
	
	//添加权限
	public void addRole(Role r,int powerid);
}
