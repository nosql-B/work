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

    /**
     * 调整信息
     * @param news
     */
    public void update(News news);

    /**
     * 添加新闻
     * @param news
     */
    public void insert(News news);

    /**
     * 根据id删除新闻
     * @param id
     */
    public void delete(int id);

    /**
     * 查询总信息数
     * @return
     */
    public int newsCount();

    /**
     * 查询总阅读量
     * @return
     */
    public long newsViewCount();

    /**
     * 查询点赞数前三的文章
     * @return
     */
    List<News> threeCountNews();
}
