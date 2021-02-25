package com.chinasofti.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.chinasofti.mapper.RoleMapper;
import com.chinasofti.pojo.Role;
import com.chinasofti.service.RoleService;

@Service
@Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
public class RoleServiceImpl implements RoleService {

	@Autowired
	RoleMapper rm;
	public void setRm(RoleMapper rm) {
		this.rm = rm;
	}


	@Override
	public List<Role> showAllRoles() {
		// TODO Auto-generated method stub
		return rm.selectAllRoles();
	}


	@Override
	public void updaRoleById(Integer roleid) {
		// TODO Auto-generated method stub
		rm.updateByPrimaryKey(roleid);
	}


	@Override
	public void updateByPrimaryKey(Role r, String powerid) {
		// TODO Auto-generated method stub
		rm.updateByPrimaryKeySelective(r,powerid);
	}


	@Override
	public void deleteAllRoles(Integer[] delids) {
		// TODO Auto-generated method stub
		rm.deleteByRoleIds(delids);;
	}


	@Override
	public void addRole(Role r, int powerid) {
		// TODO Auto-generated method stub
		rm.insert(r, powerid);
	}





}
