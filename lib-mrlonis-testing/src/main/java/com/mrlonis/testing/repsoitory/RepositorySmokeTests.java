package com.mrlonis.testing.repsoitory;

import com.mrlonis.types.BaseEntity;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.test.context.ActiveProfiles;

import java.util.UUID;

import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public abstract class RepositorySmokeTests<E extends BaseEntity, T extends PagingAndSortingRepository<E, UUID>> {
    @Autowired
    private T repository;

    @Test
    public void contextLoads() {
        assertNotNull(repository);
    }
}
