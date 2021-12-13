package com.nosql.work.entity.redis;

import java.io.Serializable;

public class RedisComment implements Serializable {

    private final static long serialVersionUID = 1L;
    private int id;
    private String comment;
    private int viewCount;
    private long commentTimes;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public int getViewCount() {
        return viewCount;
    }

    public void setViewCount(int viewCount) {
        this.viewCount = viewCount;
    }

    public long getCommentTimes() {
        return commentTimes;
    }

    public void setCommentTimes(long commentTimes) {
        this.commentTimes = commentTimes;
    }

    @Override
    public String toString() {
        return "RedisComment{" +
                "id=" + id +
                ", comment='" + comment + '\'' +
                ", viewCount=" + viewCount +
                ", commentTimes=" + commentTimes +
                '}';
    }
}
