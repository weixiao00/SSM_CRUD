package com.lishilin.service.impl;

import com.lishilin.dao.UsersMapper;
import com.lishilin.domain.Users;
import com.lishilin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UsersMapper userMapper;

    @Override
    public Users selectByPrimaryKey(Integer id){
        System.out.println("2222");
        return userMapper.selectByPrimaryKey(id);
    }
    @Override
    public List<Users> selectUsers(){
        List<Users> list = userMapper.selectUsers();
        return list;
    }

}