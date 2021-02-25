package com.lwk.bysj;

import com.lwk.bysj.config.RedisApplication;
import com.lwk.bysj.pojo.Role;
import com.lwk.bysj.pojo.User;
import com.lwk.bysj.service.UserService;
import org.springframework.context.ApplicationContext;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;

import javax.annotation.Resource;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

@SpringBootTest
class BysjApplicationTests {



    @Autowired
    private UserService us;


    @Test
    void contextLoads() {

    }

}
