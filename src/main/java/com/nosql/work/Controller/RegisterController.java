package com.nosql.work.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {
    /**
     * 登录页面跳转
     */
    @RequestMapping("/register")
    public String Register(){
        return "register";
    }
}
