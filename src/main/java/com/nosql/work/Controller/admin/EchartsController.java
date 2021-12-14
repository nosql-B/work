package com.nosql.work.Controller.admin;

import com.nosql.work.entity.News;
import com.nosql.work.entity.User;
import com.nosql.work.entity.mongo.Comments;
import com.nosql.work.service.MongoCommentService;
import com.nosql.work.service.NewsService;
import com.nosql.work.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

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

        List<News> newsList = newsService.threeCountNews();

        List<User> userList = userService.threeUser();

        List<Comments> commentsList = mongoCommentService.findAllComments(1);

        modelAndView.addObject("sumNews",sumNews);
        modelAndView.addObject("sumViewCount",sumViewCount);
        modelAndView.addObject("sumUsers",sumUsers);
        modelAndView.addObject("sumComments",sumComments);
        modelAndView.addObject("newsList",newsList);
        modelAndView.addObject("userList",userList);
        modelAndView.addObject("commentsList",commentsList);

        //添加返回的页面
        modelAndView.setViewName("/admin/echarts/table");

        return modelAndView;
    }


}
