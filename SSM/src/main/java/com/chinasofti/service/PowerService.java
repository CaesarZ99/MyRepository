package com.chinasofti.service;

import java.util.List;

import com.chinasofti.pojo.Power;

public interface PowerService {
	public List<Power> showAllPowers();
	
	public void updatePower(Power p);
	
	public void addPower(Power power);
	
	public void delPowers(Integer[] powerid);
}
