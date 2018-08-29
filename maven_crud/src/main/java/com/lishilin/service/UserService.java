package com.lishilin.service;

import com.lishilin.domain.Users;

import java.util.List;

public interface UserService {

    Users selectByPrimaryKey(Integer id);
    List<Users> selectUsers();
    void deleteByPrimaryKey(Integer userId);
    void insert(Users user);
    void updateByPrimaryKeySelective(Users users);
}
