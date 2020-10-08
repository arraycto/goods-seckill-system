package com.uvideo.seckill.system.service;

import com.uvideo.seckill.system.mapper.user.UserMapper;
import com.uvideo.seckill.system.seckill.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wencai.xu
 */
@Service
public class UserService {

    private final UserMapper userMapper;

    @Autowired
    public UserService(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public List<User> getUser(){
        return userMapper.findAll();
    }
}
