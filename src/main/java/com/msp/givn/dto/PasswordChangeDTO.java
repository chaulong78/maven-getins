package com.msp.givn.dto;

public class PasswordChangeDTO {

    private String oldPassword;

    private String password;

    private String passwordAgain;

    public String getOldPassword() {
        return oldPassword;
    }

    public void setOldPassword(String oldPassword) {
        this.oldPassword = oldPassword;
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

    @Override
    public String toString() {
        return "PasswordChangeDTO{" +
                "oldPassword='" + oldPassword + '\'' +
                ", password='" + password + '\'' +
                ", passwordAgain='" + passwordAgain + '\'' +
                '}';
    }
}
