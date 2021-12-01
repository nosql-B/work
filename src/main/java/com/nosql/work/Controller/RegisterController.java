package com.nosql.work.Controller;

import com.alibaba.fastjson.JSON;
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
public class RegisterController {


    @Resource
    private UserService userService;

    /**
     * 登录页面跳转
     */
    @RequestMapping("/register")
    public String Register(){
        return "register";
    }

    /**
     * 实现注册功能,返回JSON类型
     * @return
     */
    @RequestMapping("/Register")
    @ResponseBody
    public String insertNewUser(String username, String password){
        //用来保存注册成功后的信息，及注册成功后的页面跳转等
        Map<String ,Object> result = new HashMap<>();

        //根据用户名去查询相关用户，如果存在用户，则注册失败
        List<User> userList = null;
        userList = userService.selectUserByName(username);
        if(userList.size()!=0){
            result.put("msg","用户名已存在,请重新注册");
            result.put("code",1);//code为1代表注册失败，code为0代表注册成功
            return JSON.toJSONString(result);
        }
        //封装对象
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        userService.insert(user);
        result.put("msg","注册成功");
        result.put("code",0);
        result.put("url","/login");//注册成功,返回登录页面
        return JSON.toJSONString(result);
    }
}
