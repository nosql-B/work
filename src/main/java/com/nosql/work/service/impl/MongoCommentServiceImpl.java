package com.nosql.work.service.impl;

import com.nosql.work.entity.mongo.Comments;
import com.nosql.work.mongoDao.MongoTestDao;
import com.nosql.work.service.MongoCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MongoCommentServiceImpl implements MongoCommentService {

    @Autowired
    private MongoTestDao mongoTestDao;

    @Override
    public List<Comments> findAllComments(int id) {
        return mongoTestDao.findAllComments(id);
    }
}
