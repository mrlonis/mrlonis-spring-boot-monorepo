package com.mrlonis.genshinimpact.repository;

import com.mrlonis.genshinimpact.entities.Artifact;
import com.mrlonis.genshinimpact.entities.ArtifactSet;
import com.mrlonis.genshinimpact.entities.Character;
import com.mrlonis.genshinimpact.repositories.ArtifactSetsRepository;
import com.mrlonis.genshinimpact.repositories.ArtifactsRepository;
import com.mrlonis.genshinimpact.repositories.CharactersRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.LinkedList;
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
    @Autowired
    private ArtifactSetsRepository artifactSetsRepository;

    @Test
    void injectedComponentsAreNotNull() {
        assertNotNull(charactersRepository);
        assertNotNull(artifactsRepository);
        assertNotNull(artifactSetsRepository);
    }

    @Test
    void testFindAll() {
        assertNotNull(charactersRepository.findAll(Pageable.ofSize(10)));
    }

    @Test
    void testFindByArtifactSet() {
        Artifact blizzardStrayer = artifactsRepository.findByNameIgnoreCaseContains("Blizzard Strayer");
        assertNotNull(blizzardStrayer);

        List<ArtifactSet> artifactSets =
                artifactSetsRepository.findByArtifactOneIdIsOrArtifactTwoIdIs(blizzardStrayer.getId(),
                                                                              blizzardStrayer.getId());
        assertNotNull(artifactSets);
        assertFalse(artifactSets.isEmpty());

        List<Character> characters = new LinkedList<>();

        for (ArtifactSet artifactSet : artifactSets) {
            Page<Character> newCharacters =
                    charactersRepository.findByArtifactSetOneIdIsOrArtifactSetTwoIdIsOrArtifactSetThreeIdIsOrArtifactSetFourIdIsOrArtifactSetFiveIdIs(
                            artifactSet.getId(), artifactSet.getId(), artifactSet.getId(), artifactSet.getId(),
                            artifactSet.getId(), Pageable.ofSize(100));

            assertNotNull(newCharacters);

            characters.addAll(newCharacters.stream().toList());
        }

        assertFalse(characters.isEmpty());
    }
}
