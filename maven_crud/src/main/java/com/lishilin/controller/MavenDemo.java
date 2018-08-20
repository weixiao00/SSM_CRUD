package com.lishilin.controller;

import com.lishilin.domain.User;
import com.lishilin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MavenDemo {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "demo")
    public String demo(){
        System.out.println("demo");
        return "demo";
    }
    @RequestMapping(value = "demo2")
    public ModelAndView demo2(Integer id,ModelAndView mav){
        User user = userService.selectByPrimaryKey(id);
        System.out.println(user);
        mav.addObject("user",user);
        mav.setViewName("demo");
        return mav;
    }
}
