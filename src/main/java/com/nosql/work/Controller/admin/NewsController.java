package com.nosql.work.Controller.admin;

import com.nosql.work.service.NewsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
public class NewsController {

    @Resource
    private NewsService newsService;

    /**
     * 根据id删除新闻
     * @param id
     * @return
     */
    @RequestMapping("/admin/news/delete")
    @ResponseBody
    public String delete(int id){
        newsService.delete(id);
        return "";
    }
}
