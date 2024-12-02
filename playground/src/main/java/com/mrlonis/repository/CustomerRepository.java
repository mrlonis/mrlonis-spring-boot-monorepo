package com.mrlonis.repository;

import com.mrlonis.entity.Customer;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
    @Query(
            value =
                    "SELECT c.id, c.name, c.street, c.city, c.state FROM Customer as c LEFT JOIN Sales_Order as sa ON c.id = sa.customer_id WHERE sa.customer_id IS NULL",
            nativeQuery = true)
    List<Customer> findCustomersWithNoSalesOrdersLeftJoin();

    @Query(
            value =
                    "SELECT * FROM Customer as c WHERE NOT EXISTS (SELECT * FROM Sales_Order as sa WHERE c.id = sa.customer_id)",
            nativeQuery = true)
    List<Customer> findCustomersWithNoSalesOrdersSubquery();

    @Query(
            value = "SELECT * FROM Customer as c WHERE c.id NOT IN (SELECT sa.customer_id FROM Sales_Order as sa)",
            nativeQuery = true)
    List<Customer> findCustomersWithNoSalesOrdersSubquery2();
}
