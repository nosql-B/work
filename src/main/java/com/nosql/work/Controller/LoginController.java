package com.nosql.work.Controller;

import com.alibaba.fastjson.JSON;
import com.nosql.work.entity.User;
import com.nosql.work.mapper.UserMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class LoginController {

    @Resource
    private UserMapper userMapper;

    /**
     * 登录页面跳转
     */
    @RequestMapping("/login")
    public String Login(){
        return "login";
    }







}
