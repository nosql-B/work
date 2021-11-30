package com.nosql.work.mapper;

import com.nosql.work.entity.Content;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ContentMapper {

    /**
     * 根据 id 查询新闻内容
     * @return
     */
    public List<Content> findAll(int id) ;
}