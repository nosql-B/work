package com.nosql.work.Controller.mongo;

import com.nosql.work.entity.mongo.Comments;
import com.nosql.work.mongoDao.MongoTestDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class mongoTestController {

    @Autowired
    private MongoTestDao mongoTestDao;


    /**
     * 根据id获取对应的评论
     * @param id
     * @return
     */
    @RequestMapping("/mongoTest/{id}")
    public List<Comments> findTestByName(@PathVariable("id") Integer id){
        List<Comments> comments = null;
        //如果没有接收到参数则默认为是1
        if(id == null || id==0){
            id = 1;
        }
        comments = mongoTestDao.findAllComments(id);
        return comments;
    }
}
