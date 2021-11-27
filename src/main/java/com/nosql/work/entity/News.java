package com.nosql.work.entity;

import java.sql.Date;

public class News {
    private Integer id;

    private String title;

    private String content;

    private String types;

    private String image;

    private String author;
    
    private Integer viewCount;

    private Date createdAt;

    private Short isValid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    public String getTypes() {
        return types;
    }

    public void setTypes(String types) {
        this.types = types;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Integer getviewCount() {
        return viewCount;
    }

    public void setviewCount(Integer viewCount) {
        this.viewCount = viewCount;
    }

    public Date getcreatedAt() {
        return createdAt;
    }

    public void setcreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Short getIsValid() {
        return isValid;
    }

    public void setIsValid(Short isValid) {
        this.isValid = isValid;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", title=").append(title);
        sb.append(", content=").append(content);
        sb.append(", types=").append(types);
        sb.append(", image=").append(image);
        sb.append(", author=").append(author);
        sb.append(", viewCount=").append(viewCount);
        sb.append(", createdAt=").append(createdAt);
        sb.append(", isValid=").append(isValid);
        sb.append("]");
        return sb.toString();
    }
}