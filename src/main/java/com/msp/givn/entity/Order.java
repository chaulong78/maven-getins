package com.msp.givn.entity;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "orders")
public class Order {

    @Id
    @Column(name = "id")
    private String id;

    @Column(name = "customer_id")
    private int customerId;

    @Column(name = "amount")
    private double amount;

    @Column(name = "create_date")
    private Date createDate;

    @Column(name = "enabled")
    private boolean enabled;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }
}
