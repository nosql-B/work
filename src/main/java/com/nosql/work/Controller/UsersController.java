package com.nosql.work.Controller;

import com.alibaba.fastjson.JSON;
import com.nosql.work.entity.News;
import com.nosql.work.entity.User;
import com.nosql.work.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UsersController {

    @Resource
    private UserService userService;

    @RequestMapping("/AllUsers")
    @ResponseBody
    public String findAllUser(){
        List<User> userList = null;
        userList = userService.findAllUser();

        Map<String ,Object> result = new HashMap<>();
        result.put("data",userList);
        result.put("total",userList.size());

        return JSON.toJSONString(result);
    }
}
