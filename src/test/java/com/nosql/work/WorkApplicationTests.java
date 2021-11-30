package com.nosql.work;

import com.nosql.work.entity.Content;
import com.nosql.work.entity.News;
import com.nosql.work.entity.mongo.Comments;
import com.nosql.work.mapper.NewsMapper;
import com.nosql.work.mongoDao.impl.MongoTestDaoImpl;
import com.nosql.work.service.ContentService;
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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.TimeZone;

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

    @Resource
    private ContentService contentService;

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
        comments.setCreated_at(new Date(new java.util.Date().getTime()));
        comments.setX(12);
        mongoTestDao.saveTest(comments);
    }


    @Test
    public void date() throws ParseException {
        String date = "2021-11-15";
        SimpleDateFormat formattedDate = new SimpleDateFormat("yyyy-MM-dd");
        java.sql.Date date2 = new java.sql.Date(formattedDate.parse(date).getTime());
        System.out.println(date2);
    }

    /**
     * 查询所有MongoDB对象
     */
    @Test
    public void testFindAll() throws ParseException {
        List<Comments> commentsList = mongoCommentService.findAllComments(1);
        for (Comments comment:
             commentsList) {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String timeFormat = sdf.format(comment.getCreated_at());
            System.out.println(timeFormat);
            comment.setCreated_at(sdf.parse(timeFormat));
            System.out.println(comment.getCreated_at());
        }
    }

    /**
     * 测试contentMapper
     */
    @Test
    public void testContent() {
        System.out.println(contentService.findAll(1));
    }
}
