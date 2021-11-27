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

    /**
     * 判断是否登陆成功
     * @param username
     * @param password
     * @param request
     * @return
     */
    @RequestMapping("/Login")
    @ResponseBody
    public String isExist(String username, String password, HttpServletRequest request){
        Map<String ,Object> result = new HashMap<>();
        boolean flag = false;

        List<User> lists = userMapper.selectUserByName(username);

        User login_user = null;//用来保存用户信息
        // 如果集合长度为0,说明不存在此用户
        if(lists.size()==0) {
            result.put("msg", "用户名不存在");
            result.put("code",1);
            return JSON.toJSONString(result);
        }
        for (User user: lists) {
            if(user.getPassword().equals(password)){//密码正确,则用户存在
                flag = true;
                login_user = user;
            }
        }
        if(flag ==true){
            result.put("msg","欢迎登陆"+username);
            result.put("code",0);//用来返回前台判断是否登陆成功，0代表成功，1代表失败
            result.put("redirect_url","/webSite");
            HttpSession session = request.getSession();
            session.setAttribute("login_user",login_user);
        }else{
            result.put("msg","密码错误");
            result.put("code",1);
        }
        String json = JSON.toJSONString(result);
        return json;
    }

    /***
     * 实现注销功能
     * @return
     */
    @RequestMapping("/loginOut")
    public String loginOut(HttpServletRequest request){
        /**
         * 将当前的会话彻底清除
         */
        request.getSession().invalidate();
        return "login";//返回登录界面
    }















}
