package com.chinasofti.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.chinasofti.pojo.Revisit;

public interface RevisitMapper {
    int deleteByPrimaryKey(Integer vid);

    void insert(@Param("r")Revisit r,@Param("cusid")Integer cusid);

    int insertSelective(Revisit record);

    Revisit selectByPrimaryKey(Integer vid);

    int updateByPrimaryKeySelective(Revisit record);

    List<Revisit> selectRevisitsInfo();
    
    public void deleteRevisits(Integer[] delids);
    
    int updateByPrimaryKey(Revisit record);
    
    List<Revisit> selectVisits(@Param("v")String vdate,@Param("cn")String cusname);
}