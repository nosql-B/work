package com.nosql.work.service;

import com.nosql.work.entity.News;
import com.nosql.work.mapper.NewsMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public interface NewsService {


    /**
     * 查询所有信息
     * @return
     */
    public List<News> findAll();



    public void update(News news);
}
