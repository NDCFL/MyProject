package com.ht.service;

import com.ht.pojo.Money;
import com.ht.pojo.Student;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/9/13.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = {"classpath:/config/spring-applicationContext.xml", "classpath:/config/spring-mybatis.xml"})

public class StudentServiceTest {

    @Resource
    private MoneyService moneyService;
    @Test
    public void testadd() throws  Exception{
        double d[] = new double[4];
        d[0]=600;
        d[1]=600;
        d[2]=600;
        d[3]=600;
        moneyService.addarry(d);
    }
}
