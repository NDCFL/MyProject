package com.ht.service;

import com.ht.pojo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/9/28.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = {"classpath:/config/spring-applicationContext.xml", "classpath:/config/spring-mybatis.xml"})
public class UserServiceTest{

    @Resource
    private UserService userService;
    @Test
    public void testAddUser(){
        User user = new User();
        user.setName("刘红");
        user.setAge(25);
        for(int i=0;i<200000;i++){
            userService.add(user);
        }
    }
}
