package com.nosql.work;

import com.nosql.work.entity.News;
import com.nosql.work.entity.mongo.Comments;
import com.nosql.work.mapper.NewsMapper;
import com.nosql.work.mongoDao.impl.MongoTestDaoImpl;
import com.nosql.work.service.MongoCommentService;
import com.nosql.work.service.NewsService;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@SpringBootTest
// 手动调整扫描包
@ComponentScan({"com.nosql"})
// 扫描mapper

@RunWith(SpringRunner.class)
class WorkApplicationTests {

    @Resource
    private NewsMapper newsMapper;

    @Resource
    private NewsService newsService;


    @Resource
    private MongoTestDaoImpl mongoTestDao;

    @Resource
    private MongoCommentService mongoCommentService;


    @Test
    void contextLoads() {
        for (News obj: newsService.findAll()) {
            System.out.println(obj.toString());
        }

    }

    @Test
    void contextLoads2() {
        System.out.println(newsMapper.selectByPrimaryKey(1));

    }



    @Test
    public void test(){
        System.out.println(mongoTestDao.findTestByName("first"));
    }


    @Test
    public void mongoInsert(){
        Comments comments = new Comments();
        comments.setId(1);
        comments.setContent("测试内容");
        comments.setTitle("second");
        comments.setCreated_at(new Date());
        comments.setX(12);
        mongoTestDao.saveTest(comments);
    }


    /**
     * 查询所有MongoDB对象
     */
    @Test
    public void testFindAll(){
        List<Comments> commentsList = mongoCommentService.findAllComments(1);
        for (Comments comment:
             commentsList) {
            System.out.println(comment.toString());
        }
    }
}
