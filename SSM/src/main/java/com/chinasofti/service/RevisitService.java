package com.chinasofti.service;

import java.util.List;

import com.chinasofti.pojo.Revisit;

public interface RevisitService {
	List<Revisit> showRevisitsView();
	
	//批量删除回访信息
	public void deleteRevisits(Integer[] delids);
	
	public void insertRevisits(Revisit r,Integer cusid);

	List<Revisit> showRevisitsByCondition(String vdate, String cusname);
}
