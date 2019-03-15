package com.msp.givn.entity;

import javax.persistence.*;

@Entity
@Table(name = "course_type")
public class CourseType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "url_name")
    private String urlName;

    @Column(name = "description")
    private String description;

    @Override
    public String toString() {
        return "CourseType{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", urlName='" + urlName + '\'' +
                ", description='" + description + '\'' +
                '}';
    }

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
}
