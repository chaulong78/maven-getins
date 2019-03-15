package com.msp.givn.dto;

import java.sql.Date;

public class PostDTO {

    private int id;

    private String authorName;

    private String name;

    private String description;

    private String image;

    private String content;

    private String urlName;

    private String typeName;

    private String typeUrl;

    private Date createDate;

    private boolean enabled;

    @Override
    public String toString() {
        return "PostDTO{" +
                "id=" + id +
                ", authorName='" + authorName + '\'' +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", image='" + image + '\'' +
                ", content='" + content + '\'' +
                ", urlName='" + urlName + '\'' +
                ", typeName='" + typeName + '\'' +
                ", typeUrl='" + typeUrl + '\'' +
                ", createDate=" + createDate +
                ", enabled=" + enabled +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUrlName() {
        return urlName;
    }

    public void setUrlName(String urlName) {
        this.urlName = urlName;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getTypeUrl() {
        return typeUrl;
    }

    public void setTypeUrl(String typeUrl) {
        this.typeUrl = typeUrl;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }
}
