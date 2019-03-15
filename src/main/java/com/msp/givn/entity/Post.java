package com.msp.givn.entity;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "post")
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "author_id")
    private int authorId;

    @Column(name = "type_id")
    private int typeId;

    @Column(name = "name")
    private String name;

    @Column(name = "url_name")
    private String urlName;

    @Column(name = "description")
    private String description;

    @Column(name = "image")
    private String image;

    @Column(name = "content")
    private String content;

    @Column(name = "attach")
    private String attach;

    @Column(name = "create_date")
    private Date createDate;

    @Column(name = "enabled")
    private boolean enabled;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAuthorId() {
        return authorId;
    }

    public void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrlName() {
        return urlName;
    }

    public void setUrlName(String urlName) {
        this.urlName = urlName;
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

    public String getAttach() {
        return attach;
    }

    public void setAttach(String attach) {
        this.attach = attach;
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

    @Override
    public String toString() {
        return "Post{" +
                "id=" + id +
                ", authorId=" + authorId +
                ", typeId=" + typeId +
                ", name='" + name + '\'' +
                ", urlName='" + urlName + '\'' +
                ", description='" + description + '\'' +
                ", image='" + image + '\'' +
                ", content='" + content + '\'' +
                ", attach='" + attach + '\'' +
                ", createDate=" + createDate +
                ", enabled=" + enabled +
                '}';
    }
}
