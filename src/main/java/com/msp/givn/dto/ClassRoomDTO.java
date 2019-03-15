package com.msp.givn.dto;

import java.sql.Date;

public class ClassRoomDTO {

    private int id;

    private String courseName;

    private String teacherName;

    private String name;

    private String description;

    private int studentNumber;

    private Date beginDate;

    private Date endDate;

    private boolean enabled;

    @Override
    public String toString() {
        return "ClassRoomDTO{" +
                "id=" + id +
                ", courseName='" + courseName + '\'' +
                ", teacherName='" + teacherName + '\'' +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", studentNumber=" + studentNumber +
                ", beginDate=" + beginDate +
                ", endDate=" + endDate +
                ", enabled=" + enabled +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
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

    public int getStudentNumber() {
        return studentNumber;
    }

    public void setStudentNumber(int studentNumber) {
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
}
