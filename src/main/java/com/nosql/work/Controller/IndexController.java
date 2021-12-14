package com.nosql.work.Controller;

import com.nosql.work.entity.Content;
import com.nosql.work.entity.News;
import com.nosql.work.entity.mongo.Comments;
import com.nosql.work.entity.redis.RedisComment;
import com.nosql.work.redisDao.RedisNews;
import com.nosql.work.service.ContentService;
import com.nosql.work.service.MongoCommentService;
import com.nosql.work.service.NewsService;
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

    @Autowired
    private ContentService contentService;

    @Autowired
    private RedisNews redisNews;

    @Autowired
    private NewsService newsService;

    /**
     * 根据id跳转相关新闻页面并获取相关评论
     * @return
     */
    @RequestMapping({"/news/{id}","/news"})
    public ModelAndView news(@PathVariable(required = false) Integer id){

        //如果没有传参id，则默认为1
        if (id==null){
            id = 1;
        }

        ModelAndView modelAndView = new ModelAndView();

        /**
         * 获取新闻的评论内容
         */
        List<Comments> lists = null;
        lists = mongoCommentService.findAllComments(id);
        for (Comments comment:
             lists) {
            Calendar calendar = Calendar.getInstance();

        }

        List<RedisComment> redisComments = redisNews.redisFindAll();

        List<News> newsList = newsService.findAll();

        modelAndView.addObject("comments",lists);

        modelAndView.addObject("redisComments",redisComments);

        modelAndView.addObject("newList",newsList);

        /**
         * 获取新闻的主体内容
         */

        Content content = null;
        content = contentService.findAll(id);

        modelAndView.addObject("content",content);

        modelAndView.setViewName("news");
        return modelAndView;
    }



    @RequestMapping("/index")
    public String index(){
        return "index";
    }
}
