package com.nosql.work.Controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.nosql.work.entity.News;
import com.nosql.work.entity.User;
import com.nosql.work.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class WebsiteController {

    @Autowired
    private NewsService newsService;
    /**
     * 头条页面跳转
     * @return
     */
    @RequestMapping("/webSite")
    public ModelAndView webSite(HttpServletRequest request,Integer pageNumber){

        //默认为第一页
        if (pageNumber == null){
            pageNumber = 1;
        }

        /**
         * 开启分页
         */
        PageHelper.startPage(pageNumber,5);

        User user = null;
        HttpSession session = request.getSession();
        user = (User) session.getAttribute("login_user");

        ModelAndView modelAndView = new ModelAndView();

        List<News> lists = null;
        lists = newsService.findAll();

        modelAndView.addObject("news",lists);
        modelAndView.addObject("user",user);
        modelAndView.setViewName("toutiao_website");
        return modelAndView;
    }
}
