package com.nosql.work.redisDao.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.nosql.work.entity.redis.RedisComment;
import com.nosql.work.redisDao.RedisNews;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;
import java.util.concurrent.TimeUnit;

@Component
public class RedisNewsImpl implements RedisNews {
    @Resource
    private RedisTemplate redisTemplate;


    @Override
    public void addRedisComment(RedisComment redisComment) {
        redisTemplate.opsForValue().set("comment",redisComment);
    }



    @Override
    public List<RedisComment> redisFindAll() {
        Object obj = redisTemplate.opsForValue().get("comments");
        List<RedisComment> lists  = JSONObject.parseArray(obj.toString(), RedisComment.class);
        return lists;
    }

    public void addList(List<RedisComment> list){
        String json = JSON.toJSONString(list);//转json
        redisTemplate.opsForValue().set("comments",json,60*10, TimeUnit.DAYS);//存放
    }
}
