package com.chinasofti.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.chinasofti.mapper.WareMapper;
import com.chinasofti.pojo.Ware;
import com.chinasofti.service.WareService;

@Service
@Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
public class WareServiceImpl implements WareService {

	@Autowired
	private WareMapper wm;
	public void setWm(WareMapper wm) {
		this.wm = wm;
	}

	@Override
	public List<Ware> showAllWares() {
		// TODO Auto-generated method stub
		return wm.selectAllWarehouses();
	}

}
