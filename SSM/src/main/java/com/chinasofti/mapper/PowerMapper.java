package com.chinasofti.mapper;

import java.util.List;

import com.chinasofti.pojo.Power;
import com.chinasofti.pojo.Role;

public interface PowerMapper {
    int deleteByPrimaryKey(Integer powerid);

    int insert(Power record);

    int insertSelective(Power record);

    Power selectByPrimaryKey(Integer powerid);
    
    List<Power> selectAllPowers();
    
    int updateByPrimaryKeySelective(Power record);
    
    void updateByPrimaryKey(Power record);
    
    void deletePowerByIds(Integer[] powerid);
}