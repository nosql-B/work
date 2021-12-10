package com.nosql.work.Controller.admin;

import com.alibaba.fastjson.JSON;
import com.nosql.work.entity.News;
import com.nosql.work.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * 新闻管理的控制器
 */
@Controller
public class AdminNewsController {

    @Autowired
    private NewsService newsService;


    @RequestMapping("/admin/news/edit")
    @ResponseBody
    public String edit(News news){
        Map<String,Object> map = new HashMap<>();
        newsService.update(news);
        map.put("msg","修改成功");
        map.put("code",0);
        return JSON.toJSONString(map);
    }

    @RequestMapping("/admin/news/add")
    public String add(){
        return "/admin/news/form";
    }

}
