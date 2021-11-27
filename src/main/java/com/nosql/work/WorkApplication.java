package com.nosql.work;

import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

// 手动调整扫描包
@ComponentScan({"com.nosql"})
// 扫描mapper
@MapperScan("com.nosql.work.mapper")
@SpringBootApplication
public class WorkApplication {


    public static void main(String[] args) {
        SpringApplication.run(WorkApplication.class, args);
    }

}
