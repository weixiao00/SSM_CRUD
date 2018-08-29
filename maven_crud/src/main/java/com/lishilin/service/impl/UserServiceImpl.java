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
        return userMapper.selectByPrimaryKey(id);
    }
    @Override
    public List<Users> selectUsers(){
        List<Users> list = userMapper.selectUsers();
        return list;
    }
    @Override
    public void deleteByPrimaryKey(Integer userId){
        userMapper.deleteByPrimaryKey(userId);
    }
    @Override
    public void insert(Users users){
        userMapper.insert(users);
    }
    @Override
    public void updateByPrimaryKeySelective(Users users){
        userMapper.updateByPrimaryKeySelective(users);
    }
}
