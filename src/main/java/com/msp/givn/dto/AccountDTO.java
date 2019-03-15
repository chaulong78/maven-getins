package com.msp.givn.dto;

import java.sql.Timestamp;

public class AccountDTO {

    private int id;

    private String username;

    private String email;

    private String roleName;

    private boolean enabled;

    private Timestamp lastActive;

    @Override
    public String toString() {
        return "AccountDTO{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", roleName='" + roleName + '\'' +
                ", enabled=" + enabled +
                ", lastActive=" + lastActive +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public Timestamp getLastActive() {
        return lastActive;
    }

    public void setLastActive(Timestamp lastActive) {
        this.lastActive = lastActive;
    }
}
