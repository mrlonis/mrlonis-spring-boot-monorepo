package com.mrlonis.mythicheroes.templates.repsoitory;

import com.mrlonis.types.BaseEntity;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.test.context.ActiveProfiles;

import java.util.UUID;

import static org.junit.jupiter.api.Assertions.*;



/**
 * To use this class, you must extend it and add the following annotations:
 * <ul>
 *     <li>&#064;DataJpaTest</li>
 *     <li>&#064;ActiveProfiles("h2")</li>
 * </ul>
 *
 * @param <E> The Entity class to use
 * @param <T> The PagingAndSortingRepository to use
 * @see DataJpaTest
 * @see ActiveProfiles
 */
public abstract class RepositoryH2Tests<E extends BaseEntity, T extends PagingAndSortingRepository<E, UUID>> {

    @Autowired
    protected T repository;

    @Test
    void contextLoads() {
        assertNotNull(repository);
    }
}
