package com.msp.givn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Date;

@Entity
@Table(name = "user_detail")
public class UserDetail {

    @Id
    @Column(name = "user_id")
    private int id;

    @Column(name = "full_name")
    private String fullName;

    @Column(name = "birth_date")
    private Date birthDate;

    @Column(name = "gender")
    private boolean gender;

    @Column(name = "address")
    private String address;

    @Column(name = "phone")
    private String phone;

    @Column(name = "job")
    private String job;

    @Override
    public String toString() {
        return "UserDetail{" +
                "id=" + id +
                ", fullName='" + fullName + '\'' +
                ", birthDate=" + birthDate +
                ", gender=" + gender +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", job='" + job + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }
}
