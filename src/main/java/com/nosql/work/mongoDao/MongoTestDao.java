package com.nosql.work.mongoDao;

import com.nosql.work.entity.mongo.Posts;
import org.springframework.stereotype.Component;

@Component
public interface MongoTestDao {

    public void saveTest(Posts test);

    /**
     * 根据用户名查询对象
     * @return
     */
    public Posts findTestByName(String title);

    /**
     * 更新对象
     */
    public void updateTest(Posts test);

    /**
     * 删除对象
     * @param id
     */
    public void deleteTestById(Integer id);



}
