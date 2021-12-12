package com.nosql.work.service.impl;

import com.nosql.work.entity.User;
import com.nosql.work.mapper.UserMapper;
import com.nosql.work.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    /**
     * 根据用户名查询相关用户
     * @param name
     * @return
     */
    @Override
    public List<User> selectUserByName(String name) {
        List<User> users = null;
        users = userMapper.selectUserByName(name);
        return users;
    }

    /**
     * 实现注册功能
     * @param user
     */
    @Override
    public void insert(User user) {
        userMapper.insert(user);
    }

    @Override
    public List<User> findAllUser() {
        return userMapper.findAllUser();
    }


}
