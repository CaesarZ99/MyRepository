package com.chinasofti.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.chinasofti.mapper.PowerMapper;
import com.chinasofti.pojo.Power;
import com.chinasofti.service.PowerService;

@Service
@Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
public class PowerServiceImpl implements PowerService {

	@Autowired
	private PowerMapper pm;
	public void setPm(PowerMapper pm) {
		this.pm = pm;
	}



	@Override
	public List<Power> showAllPowers() {
		// TODO Auto-generated method stub
		return pm.selectAllPowers();
	}



	@Override
	public void updatePower(Power p) {
		// TODO Auto-generated method stub
		pm.updateByPrimaryKey(p);
	}



	@Override
	public void addPower(Power power) {
		// TODO Auto-generated method stub
		pm.insertSelective(power);
	}



	@Override
	public void delPowers(Integer[] powerid) {
		// TODO Auto-generated method stub
		pm.deletePowerByIds(powerid);
	}

}
