package com.mrlonis.genshinimpact.repository;

import com.mrlonis.genshinimpact.repositories.ArtifactSetsRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.junit.jupiter.api.Assertions.assertNotNull;

@ExtendWith(SpringExtension.class)
@DataJpaTest
@ActiveProfiles("test-h2")
class ArtifactSetsRepositoryTests {
    @Autowired
    private ArtifactSetsRepository artifactSetsRepository;

    @Test
    void injectedComponentsAreNotNull() {
        assertNotNull(artifactSetsRepository);
    }

    @Test
    void testFindAll() {
        assertNotNull(artifactSetsRepository.findAll());
    }
}
