package com.nosql.work.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewsNationalController {

    @RequestMapping("/guoji")
    public String interNational(){
        return "guoji";
    }
}
