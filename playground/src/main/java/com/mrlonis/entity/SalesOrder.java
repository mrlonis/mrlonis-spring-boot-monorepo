package com.mrlonis.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import java.math.BigDecimal;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Builder
@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Sales_Order")
public class SalesOrder {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(
            name = "id",
            columnDefinition = "serial",
            unique = true,
            nullable = false,
            insertable = false,
            updatable = false)
    private int id;

    @Column(name = "customer_id")
    private int customerId;

    @Column(name = "item_id")
    private int itemId;

    @Column(name = "order_number")
    private String orderNumber;

    @Column(name = "quantity")
    private int quantity;

    @Column(name = "amount", columnDefinition = "NUMERIC(10,2)")
    private BigDecimal amount;

    @ManyToOne
    @JoinColumn(name = "customer_id", referencedColumnName = "id", insertable = false, updatable = false)
    private Customer customer;
}
