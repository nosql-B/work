package com.nosql.work.entity;

import java.util.Date;

public class News {
    private Integer id;

    private String title;

    private String content;

    private String types;

    private String image;

    private String author;
    
    private Integer view_count;

    private Date created_at;

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

    public Integer getview_count() {
        return view_count;
    }

    public void setview_count(Integer view_count) {
        this.view_count = view_count;
    }

    public Date getcreated_at() {
        return created_at;
    }

    public void setcreated_at(Date created_at) {
        this.created_at = created_at;
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
        sb.append(", view_count=").append(view_count);
        sb.append(", created_at=").append(created_at);
        sb.append(", isValid=").append(isValid);
        sb.append("]");
        return sb.toString();
    }
}