package com.fl.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2017/9/29.
 */
@RestController
@EnableAutoConfiguration
public class HelloWord {
    @RequestMapping("/")
    String home() {
        return "Hello World!";
    }

    @RequestMapping("/hello/{Name}")
    String index(@PathVariable String Name) {
        return "Hello "+Name+"!";
    }
    public static void main(String [] args){
        SpringApplication.run(HelloWord.class, args);
    }
}
