package com.lishilin.serviceimpl;

import com.lishilin.dao.UserMapper;
import com.lishilin.domain.User;
import com.lishilin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public User selectByPrimaryKey(Integer id){
        return userMapper.selectByPrimaryKey(id);
    }
}
