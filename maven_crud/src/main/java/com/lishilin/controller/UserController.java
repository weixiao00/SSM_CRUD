package com.lishilin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class UserController {
    @RequestMapping(value = "list")
    public ModelAndView getUser(ModelAndView mav){
        System.out.println("qwer");
        return mav;
    }
}
