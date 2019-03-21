package com.msp.givn.entity;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "discount")
public class Discount {

    @Id
    @Column(name = "id")
    private String id;

    @Column(name = "discount")
    private double discount;

    @Column(name = "expiry_date")
    private Date expiryDate;

    @Column(name = "enabled")
    private boolean enabled;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public Date getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(Date expiryDate) {
        this.expiryDate = expiryDate;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }
}
