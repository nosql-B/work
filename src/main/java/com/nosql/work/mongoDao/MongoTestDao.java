package com.nosql.work.mongoDao;

import com.nosql.work.entity.mongo.Comments;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface MongoTestDao {

    public void saveTest(Comments test);


    /**
     * 根据id传所有评论
     * @param id
     * @return
     */
    public List<Comments> findAllComments(int id);



    /**
     * 根据用户名查询对象
     * @return
     */
    public Comments findTestByName(String title);

    /**
     * 更新对象
     */
    public void updateTest(Comments test);

    /**
     * 删除对象
     * @param id
     */
    public void deleteTestById(Integer id);



}
