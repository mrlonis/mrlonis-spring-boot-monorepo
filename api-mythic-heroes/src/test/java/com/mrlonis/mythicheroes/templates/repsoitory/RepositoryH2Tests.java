package com.mrlonis.mythicheroes.templates.repsoitory;

import com.mrlonis.mythicheroes.domain.ProjectEntity;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.test.context.ActiveProfiles;

import java.util.UUID;

import static org.junit.jupiter.api.Assertions.assertNotNull;

@DataJpaTest
@ActiveProfiles("h2")
public abstract class RepositoryH2Tests<E extends ProjectEntity, T extends PagingAndSortingRepository<E, UUID>> {

    @Autowired
    protected T repository;

    @Test
    void contextLoads() {
        assertNotNull(repository);
    }
}
