package com.nosql.work.service;


import com.nosql.work.entity.mongo.Comments;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface MongoCommentService {

    /**
     * 根据id查询评论
     * @param id
     * @return
     */
    public List<Comments> findAllComments(int id);

}
