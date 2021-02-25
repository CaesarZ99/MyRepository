package com.lwk.bysj.mapper;

import com.lwk.bysj.pojo.SysLog;

import java.util.List;

public interface SysLogMapper {
    void saveLog(SysLog sysLog);
    List<SysLog> selectAllLog();
    void deleteByLogIds(Integer[] delids);
}