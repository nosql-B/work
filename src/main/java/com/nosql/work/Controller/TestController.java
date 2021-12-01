package com.nosql.work.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

    /**
     * 后台的主页
     * @return
     */
    @RequestMapping("/index2")
    public String index2(){
        return "index2";
    }

    @RequestMapping("/admin/index2")
    public String adminIndex(){
        return "/admin/index";
    }

    @RequestMapping("/admin/welcome")
    public String adminWelcome(){
        return "/admin/welcome";
    }

    /**
     * 用户url
     * @return
     */
    @RequestMapping("/admin/user/index")
    public String adminUserIndex(){
        return "/admin/user/index";
    }

    @RequestMapping("/admin/role/index")
    public String adminRoleIndex(){
        return "/admin/role/index";
    }

    @RequestMapping("/admin/resource/index")
    public String adminResourceIndex(){
        return "/admin/resource/index";
    }

}
