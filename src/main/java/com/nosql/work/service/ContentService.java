package com.nosql.work.service;

import com.nosql.work.entity.Content;

import java.util.List;

public interface ContentService {

    /**
     * 根据id查询相关新闻内容
     * @param id
     * @return
     */
    public Content findAll(int id);
}
