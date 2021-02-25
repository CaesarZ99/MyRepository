package com.chinasofti.mapper;

import java.util.List;

import com.chinasofti.pojo.Company;

public interface CompanyMapper {
    int deleteByPrimaryKey(Integer comid);

    int insert(Company record);

    int insertSelective(Company record);
    
    List<Company> selectAllCompanysInfo();
    
    //批量删除
    void deleteCompanys(Integer[] delids);
    
    Company selectByPrimaryKey(Integer comid);

    int updateByPrimaryKeySelective(Company record);

    void updateByPrimaryKey(Company record);
    
    List<Company> selectCompanyByCondition(Company c);
}