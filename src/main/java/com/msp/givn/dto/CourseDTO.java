package com.msp.givn.dto;

public class CourseDTO {

    private int id;

    private String name;

    private String urlName;

    private String description;

    private String image;

    private String content;

    private String requirement;

    private int duration;

    private String videoUrl;

    private String typeName;

    private String typeUrl;

    private String authorName;

    private int rating;

    private String price;

    private boolean enabled;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
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

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    @Override
    public String toString() {
        return "CourseDTO{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", urlName='" + urlName + '\'' +
                ", description='" + description + '\'' +
                ", image='" + image + '\'' +
                ", content='" + content + '\'' +
                ", requirement='" + requirement + '\'' +
                ", duration=" + duration +
                ", videoUrl='" + videoUrl + '\'' +
                ", typeName='" + typeName + '\'' +
                ", typeUrl='" + typeUrl + '\'' +
                ", authorName='" + authorName + '\'' +
                ", rating=" + rating +
                ", price='" + price + '\'' +
                ", enabled=" + enabled +
                '}';
    }
}
