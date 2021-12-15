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

    /**
     * 查询所有24小时热评
     * @return
     */
    public List<RedisComment> redisFindAll();

    /**
     * 实现添加热评功能
     * @param list
     */
    public void addList(List<RedisComment> list);

    /**
     * 删除热评
     */
    public void delete(String key);
}
