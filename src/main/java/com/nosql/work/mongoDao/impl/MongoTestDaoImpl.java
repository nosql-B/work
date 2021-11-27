package com.nosql.work.mongoDao.impl;

import com.nosql.work.entity.mongo.Posts;
import com.nosql.work.mongoDao.MongoTestDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Component;

@Component
public class MongoTestDaoImpl implements MongoTestDao {

    @Autowired
    private MongoTemplate mongoTemplate;


    /**
     * 创建对象
     */
    public void saveTest(Posts test) {
        mongoTemplate.save(test);
    }

    /**
     * 根据用户名查询对象
     * @return
     */
    public Posts findTestByName(String title) {
        Query query=new Query(Criteria.where("title").is(title));
        Posts posts =  mongoTemplate.findOne(query , Posts.class);
        return posts;
    }

    /**
     * 更新对象
     */
    public void updateTest(Posts test) {
        Query query=new Query(Criteria.where("id").is(test.getId()));
        Update update= new Update().set("title", test.getTitle()).set("content", test.getTitle());
        //更新查询返回结果集的第一条
        mongoTemplate.updateFirst(query,update,Posts.class);
        //更新查询返回结果集的所有
        // mongoTemplate.updateMulti(query,update,TestEntity.class);
    }

    /**
     * 删除对象
     * @param id
     */
    public void deleteTestById(Integer id) {
        Query query = new Query(Criteria.where("id").is(id));
        mongoTemplate.remove(query, Posts.class);
    }

}
