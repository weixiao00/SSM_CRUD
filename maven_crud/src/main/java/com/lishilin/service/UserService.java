package com.lishilin.service;

import com.lishilin.domain.Users;

public interface UserService {

    Users selectByPrimaryKey(Integer id);
}
