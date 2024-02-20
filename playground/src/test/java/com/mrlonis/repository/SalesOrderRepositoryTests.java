package com.mrlonis.repository;

import com.mrlonis.entity.SalesOrder;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

@ExtendWith(SpringExtension.class)
@DataJpaTest
class SalesOrderRepositoryTests {

    @Autowired
    private SalesOrderRepository salesOrderRepository;

    @Test
    void testFindAll() {
        List<SalesOrder> salesOrders = salesOrderRepository.findAll();
        assertEquals(2, salesOrders.size());
    }

}
