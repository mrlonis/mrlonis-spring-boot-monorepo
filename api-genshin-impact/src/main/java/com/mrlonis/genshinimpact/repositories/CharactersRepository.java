package com.mrlonis.genshinimpact.repositories;

import com.mrlonis.genshinimpact.entities.Character;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;
import java.util.UUID;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "characters")
@CrossOrigin(origins = "http://localhost:4200")
public interface CharactersRepository
        extends JpaRepository<Character, UUID>, PagingAndSortingRepository<Character, UUID> {
    @RestResource(path = "findByName", rel = "findByName")
    Character findByNameIgnoreCaseIs(@Param("name") String name);

    @RestResource(path = "findByArtifactSet", rel = "findByArtifactSet")
    List<Character> findByArtifactSetOneIdFirstIsOrArtifactSetOneIdSecondIsOrArtifactSetTwoIdFirstIsOrArtifactSetTwoIdSecondIsOrArtifactSetThreeIdFirstIsOrArtifactSetThreeIdSecondIsOrArtifactSetFourIdFirstIsOrArtifactSetFourIdSecondIsOrArtifactSetFiveIdFirstIsOrArtifactSetFiveIdSecondIs(
            @Param("artifactSetOneIdFirst") UUID artifactSetOneIdFirst,
            @Param("artifactSetOneIdSecond") UUID artifactSetOneIdSecond,
            @Param("artifactSetTwoIdFirst") UUID artifactSetTwoIdFirst,
            @Param("artifactSetTwoIdSecond") UUID artifactSetTwoIdSecond,
            @Param("artifactSetThreeIdFirst") UUID artifactSetThreeIdFirst,
            @Param("artifactSetThreeIdSecond") UUID artifactSetThreeIdSecond,
            @Param("artifactSetFourIdFirst") UUID artifactSetFourIdFirst,
            @Param("artifactSetFourIdSecond") UUID artifactSetFourIdSecond,
            @Param("artifactSetFiveIdFirst") UUID artifactSetFiveIdFirst,
            @Param("artifactSetFiveIdSecond") UUID artifactSetFiveIdSecond);
}
