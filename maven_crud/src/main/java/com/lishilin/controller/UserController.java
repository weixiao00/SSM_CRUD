package com.lishilin.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lishilin.domain.Users;
import com.lishilin.service.UserService;
import com.lishilin.util.PageUtil;
import com.lishilin.util.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class UserController {


    @Autowired
    private UserService userService;

    @RequestMapping(value = "getUser")
    @ResponseBody
    public UserInfo getUser(@RequestParam(value = "currentPage",defaultValue = "1") Integer currentPage){
        PageHelper.startPage(currentPage, PageUtil.PAGESIZE);
        List<Users> list = userService.selectUsers();
        PageInfo<Users> pageInfo = new PageInfo<Users>(list,PageUtil.NAVIGATENUMS);
        return UserInfo.add("pageInfo",pageInfo);
    }

    @RequestMapping(value = "deleteUser/{userId}",method = RequestMethod.DELETE)
    @ResponseBody
    public UserInfo deleteUser(@PathVariable("userId") Integer userId){
        userService.deleteByPrimaryKey(userId);
        return UserInfo.add("", null);
    }

    @RequestMapping(value = "insertUser")
    @ResponseBody
    public UserInfo insertUser(Users user){
        System.out.println(user);
        userService.insert(user);
        return UserInfo.add("", null);
    }


}
