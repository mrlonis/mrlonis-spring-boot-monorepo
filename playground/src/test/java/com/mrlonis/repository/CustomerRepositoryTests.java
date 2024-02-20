package com.mrlonis.repository;

import com.mrlonis.entity.Customer;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import java.util.List;

// @ExtendWith(SpringExtension.class)
@DataJpaTest
class CustomerRepositoryTests {

    @Autowired
    private CustomerRepository customerRepository;

    @Test
    void testFindAll() {
        List<Customer> customers = customerRepository.findAll();
        assertEquals(2, customers.size());
    }

    @Test
    void testFindCustomersWithNoSalesOrdersLeftJoin() {
        List<Customer> customers = customerRepository.findCustomersWithNoSalesOrdersLeftJoin();
        assertEquals(1, customers.size());
        assertEquals(2, customers.get(0).getId());
    }

    @Test
    void testFindCustomersWithNoSalesOrdersSubquery() {
        List<Customer> customers = customerRepository.findCustomersWithNoSalesOrdersSubquery();
        assertEquals(1, customers.size());
        assertEquals(2, customers.get(0).getId());
    }

    @Test
    void testFindCustomersWithNoSalesOrdersSubquery2() {
        List<Customer> customers = customerRepository.findCustomersWithNoSalesOrdersSubquery2();
        assertEquals(1, customers.size());
        assertEquals(2, customers.get(0).getId());
    }

}
