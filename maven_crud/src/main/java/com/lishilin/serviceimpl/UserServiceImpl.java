package com.lishilin.serviceimpl;

import com.lishilin.dao.UsersMapper;
import com.lishilin.domain.Users;
import com.lishilin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UsersMapper userMapper;

    public Users selectByPrimaryKey(Integer id){
        return userMapper.selectByPrimaryKey(id);
    }
}
