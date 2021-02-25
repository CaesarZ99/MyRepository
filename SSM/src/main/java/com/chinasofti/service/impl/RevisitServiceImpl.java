package com.chinasofti.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.chinasofti.mapper.RevisitMapper;
import com.chinasofti.pojo.Revisit;
import com.chinasofti.service.RevisitService;

@Service
@Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
public class RevisitServiceImpl implements RevisitService {

	@Autowired
	private RevisitMapper rm;
	public void setRm(RevisitMapper rm) {
		this.rm = rm;
	}

	@Override
	public List<Revisit> showRevisitsView() {
		// TODO Auto-generated method stub
		return rm.selectRevisitsInfo();
	}

	@Override
	public void deleteRevisits(Integer[] delids) {
		// TODO Auto-generated method stub
		rm.deleteRevisits(delids);
	}

	@Override
	public void insertRevisits(Revisit r, Integer cusid) {
		// TODO Auto-generated method stub
		rm.insert(r, cusid);
	}

	@Override
	public List<Revisit> showRevisitsByCondition(String vdate,String cusname) {
		// TODO Auto-generated method stub
		return rm.selectVisits(vdate, cusname);
	}


}
