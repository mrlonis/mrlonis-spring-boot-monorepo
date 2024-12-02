package com.mrlonis.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;

import com.mrlonis.entity.SalesOrder;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

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
