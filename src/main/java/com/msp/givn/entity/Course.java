package com.msp.givn.entity;
import javax.persistence.*;

@Entity
@Table(name = "course")
public class Course {

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

    @Column(name = "image")
    private String image;

    @Column(name = "description")
    private String description;

    @Column(name = "content")
    private String content;

    @Column(name = "video_url")
    private String videoUrl;

    @Column(name = "price")
    private String price;

    @Column(name = "rating")
    private int rating;

    @Column(name = "requirement")
    private String requirement;

    @Column(name = "duration")
    private int duration;

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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getRequirement() {
        return requirement;
    }

    public void setRequirement(String requirement) {
        this.requirement = requirement;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    @Override
    public String toString() {
        return "Course{" +
                "id=" + id +
                ", authorId=" + authorId +
                ", typeId=" + typeId +
                ", name='" + name + '\'' +
                ", urlName='" + urlName + '\'' +
                ", image='" + image + '\'' +
                ", description='" + description + '\'' +
                ", content='" + content + '\'' +
                ", videoUrl='" + videoUrl + '\'' +
                ", price='" + price + '\'' +
                ", rating=" + rating +
                ", requirement='" + requirement + '\'' +
                ", duration=" + duration +
                ", enabled=" + enabled +
                '}';
    }
}
