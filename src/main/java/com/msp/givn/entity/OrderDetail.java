package com.msp.givn.entity;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "order_detail")
public class OrderDetail {

    @Id
    @Column(name = "order_id")
    private String orderId;

    @Column(name = "product_id")
    private int productId;

    @Column(name = "amount")
    private double amount;

    @Column(name = "quantity")
    private int quantity;

    @Column(name = "price")
    private double price;

    @Column(name = "discount_id")
    private String discountId;

    @Column(name = "expiry_date")
    private Date expiryDate;

    @Column(name = "enabled")
    private boolean enabled;

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDiscountId() {
        return discountId;
    }

    public void setDiscountId(String discountId) {
        this.discountId = discountId;
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
