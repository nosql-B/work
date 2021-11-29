package com.nosql.work.Controller;

import com.nosql.work.entity.mongo.Comments;
import com.nosql.work.service.MongoCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.aggregation.ArrayOperators;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.Calendar;
import java.util.List;

@Controller
public class IndexController {

    @Autowired
    private MongoCommentService mongoCommentService;
    /**
     * 根据id跳转相关新闻页面并获取相关评论
     * @return
     */
    @RequestMapping("/news/{id}")
    public ModelAndView news(@PathVariable("id") Integer id){
        ModelAndView modelAndView = new ModelAndView();
        List<Comments> lists = null;
        lists = mongoCommentService.findAllComments(id);
        for (Comments comment:
             lists) {
            Calendar calendar = Calendar.getInstance();

        }
        modelAndView.addObject("comments",lists);
        modelAndView.setViewName("news");
        return modelAndView;
    }


    @RequestMapping("/index")
    public String index(){
        return "index";
    }
}
