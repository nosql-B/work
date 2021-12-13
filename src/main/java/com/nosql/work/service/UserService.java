package com.nosql.work.service;

import com.nosql.work.entity.User;

import java.util.List;

public interface UserService {

    /**
     * 根据用户名查询相关用户
     * @param name
     * @return
     */
    public List<User> selectUserByName(String name);

    /**
     * 实现注册功能
     * @param user
     */
    public void insert(User user);

    /**
     * 查询所有用户
     * @return
     */
    public List<User> findAllUser();

    /**
     * 查询用户数量
     * @return
     */
    public int sumUsers();
}
