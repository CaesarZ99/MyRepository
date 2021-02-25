package com.lwk.bysj.service.impl;

import com.lwk.bysj.mapper.SysLogMapper;
import com.lwk.bysj.pojo.SysLog;
import com.lwk.bysj.service.SysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: WenKang Liu
 * @Date: 2021/1/21 19:17
 */
@Service
public class SysLogServiceImpl implements SysLogService {

    @Autowired
    SysLogMapper sysLogMapper;

    @Override
    public void save(SysLog sysLog) {
        sysLogMapper.saveLog(sysLog);
    }

    @Override
    public List<SysLog> selectAllLog() {
        return sysLogMapper.selectAllLog();
    }

    @Override
    public void deleteByLogIds(Integer[] delids) {
        sysLogMapper.deleteByLogIds(delids);
    }
}
