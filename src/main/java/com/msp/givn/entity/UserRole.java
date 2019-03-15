package com.msp.givn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_role")
public class UserRole {

    @Id
    @Column(name = "user_id")
    private int userId;

    @Column(name = "role_id")
    private int roleId;

    @Override
    public String toString() {
        return "UserRole{" +
                "userId=" + userId +
                ", roleId=" + roleId +
                '}';
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }
}
