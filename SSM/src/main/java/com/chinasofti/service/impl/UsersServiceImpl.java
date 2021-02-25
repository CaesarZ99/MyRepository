package com.chinasofti.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.chinasofti.mapper.UsersMapper;
import com.chinasofti.pojo.Users;
import com.chinasofti.service.UsersService;

@Service
@Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
public class UsersServiceImpl implements UsersService {
	@Autowired
	private UsersMapper um;
	public void setUm(UsersMapper um) {
		this.um = um;
	}

	@Override
	public Users checkLogin(String username, String password) {
		// TODO Auto-generated method stub
		return um.selectByUsernameAndPassword(username, password);
	}

	@Override
	public List<Users> showAllUsers() {
		return um.selectAllUsers();
	}

	@Override
	public Users selectUserById(Integer uid) {
		// TODO Auto-generated method stub
		return um.selectByPrimaryKey(uid);
	}

	@Override
	public void updateUserById(Users u,String roleid) {
		// TODO Auto-generated method stub
		um.updateByPrimaryKey(u,roleid);
	}

	@Override
	public void addtUser(Users u,String roleid) {
		
		um.insert(u, roleid);
	}

	@Override
	public void deleteAllUser(Integer[] delids) {
		um.deleteByUserIds(delids);
		
	}

}
