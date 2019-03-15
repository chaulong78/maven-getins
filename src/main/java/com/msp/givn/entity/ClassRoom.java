package com.msp.givn.entity;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "class")
public class ClassRoom {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "course_id")
    private int courseId;

    @Column(name = "teacher_id")
    private int teacherId;

    @Column(name = "name")
    private String name;

    @Column(name = "url_name")
    private String urlName;

    @Column(name = "description")
    private String description;

    @Column(name = "student_number")
    private String studentNumber;

    @Column(name = "begin_date")
    private Date beginDate;

    @Column(name = "end_date")
    private Date endDate;

    @Column(name = "enabled")
    private boolean enabled;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public int getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(int teacherId) {
        this.teacherId = teacherId;
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

    public String getStudentNumber() {
        return studentNumber;
    }

    public void setStudentNumber(String studentNumber) {
        this.studentNumber = studentNumber;
    }

    public Date getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(Date beginDate) {
        this.beginDate = beginDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    @Override
    public String toString() {
        return "ClassRoom{" +
                "id=" + id +
                ", courseId=" + courseId +
                ", teacherId=" + teacherId +
                ", name='" + name + '\'' +
                ", urlName='" + urlName + '\'' +
                ", description='" + description + '\'' +
                ", studentNumber='" + studentNumber + '\'' +
                ", beginDate=" + beginDate +
                ", endDate=" + endDate +
                ", enabled=" + enabled +
                '}';
    }
}
