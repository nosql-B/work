package com.nosql.work.mongoDao.impl;

import com.nosql.work.entity.mongo.Comments;
import com.nosql.work.mongoDao.MongoTestDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class MongoTestDaoImpl implements MongoTestDao {

    @Autowired
    private MongoTemplate mongoTemplate;


    /**
     * 创建对象
     */
    public void saveTest(Comments test) {
        mongoTemplate.save(test);
    }

    @Override
    public List<Comments> findAllComments(int id) {
        Query query = new Query(Criteria.where("id").is(id));
        List<Comments> comments = mongoTemplate.find(query,Comments.class);
        return comments;
    }

    /**
     * 根据用户名查询对象
     * @return
     */
    public Comments findTestByName(String title) {
        Query query=new Query(Criteria.where("title").is(title));
        Comments comments =  mongoTemplate.findOne(query , Comments.class);
        return comments;
    }

    /**
     * 更新对象
     */
    public void updateTest(Comments test) {
        Query query=new Query(Criteria.where("id").is(test.getId()));
        Update update= new Update().set("title", test.getTitle()).set("content", test.getTitle());
        //更新查询返回结果集的第一条
        mongoTemplate.updateFirst(query,update, Comments.class);
        //更新查询返回结果集的所有
        // mongoTemplate.updateMulti(query,update,TestEntity.class);
    }

    /**
     * 删除对象
     * @param id
     */
    public void deleteTestById(Integer id) {
        Query query = new Query(Criteria.where("id").is(id));
        mongoTemplate.remove(query, Comments.class);
    }

}
