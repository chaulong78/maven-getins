package com.msp.givn.entity;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;

@Entity
@Table(name = "password_reset_token")
public class PasswordResetToken {
    private static final int EXPIRATION = 10;

    @Id
    @Column(name = "user_id")
    private int id;

    @Column(name = "token")
    private String token;

    @Column(name = "expiry_date")
    private Date expiryDate;

    @OneToOne(targetEntity = User.class)
    @JoinColumn(nullable = false, name = "user_id")
    private User user;

    private Date calculateExpiryDate(int expiryMinute) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Timestamp(calendar.getTime().getTime()));
        calendar.add(Calendar.MINUTE, expiryMinute);

        return new Date(calendar.getTime().getTime());
    }

    public PasswordResetToken(String token, User user) {
        this.id = user.getId();
        this.token = token;
        this.user = user;
        this.expiryDate = calculateExpiryDate(EXPIRATION);
    }

    public static int getEXPIRATION() {
        return EXPIRATION;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Date getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(Date expiryDate) {
        this.expiryDate = expiryDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public PasswordResetToken(int id, String token, Date expiryDate, User user) {
        this.id = id;
        this.token = token;
        this.expiryDate = expiryDate;
        this.user = user;
    }

    public PasswordResetToken() {
    }
}
