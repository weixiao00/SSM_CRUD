package com.lishilin.dao;

import com.lishilin.domain.Users;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UsersMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);

    List<Users> selectUsers();

    List<Users> search_user(String param);
}