package com.mrlonis.genshinimpact.repository;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import com.mrlonis.genshinimpact.entities.Artifact;
import com.mrlonis.genshinimpact.entities.Character;
import com.mrlonis.genshinimpact.repositories.ArtifactsRepository;
import com.mrlonis.genshinimpact.repositories.CharactersRepository;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Pageable;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@ActiveProfiles("test-h2")
class CharactersRepositoryTests {
    @Autowired
    private CharactersRepository charactersRepository;

    @Autowired
    private ArtifactsRepository artifactsRepository;

    @Test
    void injectedComponentsAreNotNull() {
        assertNotNull(charactersRepository);
        assertNotNull(artifactsRepository);
    }

    @Test
    void testFindAll() {
        assertNotNull(charactersRepository.findAll(Pageable.ofSize(10)));
    }

    @Test
    void testFindByArtifactSet() {
        Optional<Artifact> repositoryArtifact = artifactsRepository.findByNameIgnoreCaseIs("Blizzard Strayer");
        assertTrue(repositoryArtifact.isPresent());

        Artifact artifact = repositoryArtifact.get();
        assertNotNull(artifact);

        List<Character> characters = charactersRepository
                .findByArtifactSetOneIdFirstIsOrArtifactSetOneIdSecondIsOrArtifactSetTwoIdFirstIsOrArtifactSetTwoIdSecondIsOrArtifactSetThreeIdFirstIsOrArtifactSetThreeIdSecondIsOrArtifactSetFourIdFirstIsOrArtifactSetFourIdSecondIsOrArtifactSetFiveIdFirstIsOrArtifactSetFiveIdSecondIs(
                        artifact.getId(),
                        artifact.getId(),
                        artifact.getId(),
                        artifact.getId(),
                        artifact.getId(),
                        artifact.getId(),
                        artifact.getId(),
                        artifact.getId(),
                        artifact.getId(),
                        artifact.getId());
        assertNotNull(characters);
        assertFalse(characters.isEmpty());
    }
}
