package com.nosql.work.service.impl;

import com.nosql.work.entity.News;
import com.nosql.work.mapper.NewsMapper;
import com.nosql.work.service.NewsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {
    @Resource
    private NewsMapper newsMapper;

    @Override
    public List<News> findAll() {
        return newsMapper.findAll();
    }
}
