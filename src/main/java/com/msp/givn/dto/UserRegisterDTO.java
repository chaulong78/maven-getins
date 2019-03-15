package com.msp.givn.dto;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class UserRegisterDTO {

    @NotNull
    @NotEmpty
    private String username;

    @NotNull
    @NotEmpty
    private String email;

    @NotNull
    @NotEmpty
    private String password;

    @NotNull
    @NotEmpty
    private String passwordAgain;

    @Override
    public String toString() {
        return "UserRegisterDTO{" +
                "username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", passwordAgain='" + passwordAgain + '\'' +
                '}';
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordAgain() {
        return passwordAgain;
    }

    public void setPasswordAgain(String passwordAgain) {
        this.passwordAgain = passwordAgain;
    }
}
