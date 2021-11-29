package com.nosql.work.entity.mongo;

import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.Date;

@Document("posts")
public class Comments {
    @Id
    private ObjectId _id;

    private int id;
    
    private String title;
    private String content;
    private Date created_at;
    private int x;

    public ObjectId get_id() {
        return _id;
    }

    public void set_id(ObjectId _id) {
        this._id = _id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    @Override
    public String toString() {
        return "Posts{" +
                "_id=" + _id +
                ", id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", created_at=" + created_at +
                ", x=" + x +
                '}';
    }
}
