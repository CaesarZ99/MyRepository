package com.chinasofti.mapper;

import java.util.List;

import com.chinasofti.pojo.Ware;

public interface WareMapper {
    int deleteByPrimaryKey(Integer wareid);

    int insert(Ware record);

    int insertSelective(Ware record);

    Ware selectByPrimaryKey(Integer wareid);

    int updateByPrimaryKeySelective(Ware record);

    int updateByPrimaryKey(Ware record);
    
    List<Ware> selectAllWarehouses();
}