package com.lwk.bysj.service;

import com.lwk.bysj.pojo.SysLog;

import java.util.List;

/**
 * @Author: WenKang Liu
 * @Date: 2021/1/21 19:15
 */
public interface SysLogService {

    void save(SysLog sysLog);
    List<SysLog> selectAllLog();
    void deleteByLogIds(Integer[] delids);

}
