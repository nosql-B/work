package com.nosql.work;

import com.nosql.work.entity.News;
import com.nosql.work.mapper.NewsMapper;
import com.nosql.work.mongoDao.impl.MongoTestDaoImpl;
import com.nosql.work.service.NewsService;
import org.junit.jupiter.api.Test;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.ComponentScan;

import javax.annotation.Resource;
import java.util.List;

@SpringBootTest
// 手动调整扫描包
@ComponentScan({"com.nosql"})
// 扫描mapper
@MapperScan("com.nosql.work.mapper")
class WorkApplicationTests {

    @Resource
    private NewsMapper newsMapper;

    @Resource
    private NewsService newsService;


    @Resource
    private MongoTestDaoImpl mongoTestDao;


    @Test
    void contextLoads() {
        for (News obj: newsService.findAll()) {
            System.out.println(obj.toString());
        }

    }

    @Test
    public void test(){
        System.out.println(mongoTestDao.findTestByName("first"));
    }
}
