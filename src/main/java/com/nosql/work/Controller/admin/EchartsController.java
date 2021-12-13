package com.nosql.work.Controller.admin;

import com.nosql.work.service.MongoCommentService;
import com.nosql.work.service.NewsService;
import com.nosql.work.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
public class EchartsController {

    @Resource
    private NewsService newsService;

    @Resource
    private UserService userService;

    @Resource
    private MongoCommentService mongoCommentService;

    @RequestMapping("/admin/echarts/data")
    public String data(){
        return "/admin/echarts/data";
    }

    @RequestMapping("/admin/echarts/table")
    public ModelAndView table(){

        ModelAndView modelAndView = new ModelAndView();

        int sumNews = newsService.newsCount();
        long sumViewCount = newsService.newsViewCount();
        int sumUsers = userService.sumUsers();

        long sumComments = mongoCommentService.sumComments();

        modelAndView.addObject("sumNews",sumNews);
        modelAndView.addObject("sumViewCount",sumViewCount);
        modelAndView.addObject("sumUsers",sumUsers);
        modelAndView.addObject("sumComments",sumComments);
        //添加返回的页面
        modelAndView.setViewName("/admin/echarts/table");

        return modelAndView;
    }


}
