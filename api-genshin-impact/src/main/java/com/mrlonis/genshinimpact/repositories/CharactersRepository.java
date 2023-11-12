package com.mrlonis.genshinimpact.repositories;

import com.mrlonis.genshinimpact.entities.Character;
import lombok.NonNull;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;
import java.util.UUID;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "characters")
@CrossOrigin(origins = "http://localhost:4200")
public interface CharactersRepository extends PagingAndSortingRepository<Character, UUID> {
    @NonNull Page<Character> findAll(@NonNull Pageable pageable);

    @RestResource(path = "findBy", rel = "findBy")
    Page<Character> findByNameIgnoreCaseContains(@Param("name") String name, Pageable pageable);

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
