package com.nosql.work.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class IndexController {

    @RequestMapping("/news")
    public String news(){
        return "news";
    }


    @RequestMapping("/index")
    public String index(){
        return "index";
    }
}
