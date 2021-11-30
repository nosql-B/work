package com.nosql.work.service.impl;

import com.nosql.work.entity.Content;
import com.nosql.work.mapper.ContentMapper;
import com.nosql.work.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ContentServiceImpl implements ContentService {

    @Resource
    private ContentMapper contentMapper;


    @Override
    public Content findAll(int id) {
        return contentMapper.findAll(id);
    }
}
