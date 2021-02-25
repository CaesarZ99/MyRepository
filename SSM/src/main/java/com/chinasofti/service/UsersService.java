package com.chinasofti.service;

import java.util.List;

import com.chinasofti.pojo.Users;

public interface UsersService {
	public Users checkLogin(String username,String password) ;
	
	public List<Users> showAllUsers();
	
	public Users selectUserById(Integer uid);
	public void addtUser(Users u,String roleid);
	
	//批量删除
	public void deleteAllUser(Integer[] delids);
	
	public void updateUserById(Users u,String roleid) ;
	
}	
