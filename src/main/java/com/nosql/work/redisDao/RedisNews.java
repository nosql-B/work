package com.nosql.work.redisDao;

import com.nosql.work.entity.redis.RedisComment;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface RedisNews {

    /**
     * 添加新评论
     * @param redisComment
     */
    public void addRedisComment(RedisComment redisComment);

    public List<RedisComment> redisFindAll();

    public void addList(List<RedisComment> list);
}
