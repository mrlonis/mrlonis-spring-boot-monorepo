package com.mrlonis.genshinimpact.repository;

import com.mrlonis.genshinimpact.entities.Artifact;
import com.mrlonis.genshinimpact.entities.Character;
import com.mrlonis.genshinimpact.repositories.ArtifactsRepository;
import com.mrlonis.genshinimpact.repositories.CharactersRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.data.domain.Pageable;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@ExtendWith(SpringExtension.class)
@DataJpaTest
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
        Artifact artifact = artifactsRepository.findByNameIgnoreCaseContains("Blizzard Strayer");
        assertNotNull(artifact);

        List<Character> characters =
                charactersRepository.findByArtifactSetOneIdFirstIsOrArtifactSetOneIdSecondIsOrArtifactSetTwoIdFirstIsOrArtifactSetTwoIdSecondIsOrArtifactSetThreeIdFirstIsOrArtifactSetThreeIdSecondIsOrArtifactSetFourIdFirstIsOrArtifactSetFourIdSecondIsOrArtifactSetFiveIdFirstIsOrArtifactSetFiveIdSecondIs(
                        artifact.getId(), artifact.getId(), artifact.getId(), artifact.getId(), artifact.getId(),
                        artifact.getId(), artifact.getId(), artifact.getId(), artifact.getId(), artifact.getId());
        assertNotNull(characters);
        assertFalse(characters.isEmpty());
    }
}