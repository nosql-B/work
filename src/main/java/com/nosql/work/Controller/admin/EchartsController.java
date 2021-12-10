package com.nosql.work.Controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EchartsController {

    @RequestMapping("/admin/echarts/form")
    public String form(){
        return "/admin/echarts/form";
    }

    @RequestMapping("/admin/echarts/index")
    public String index(){
        return "/admin/echarts/index";
    }

}
