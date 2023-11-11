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

import java.util.UUID;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "characters")
@CrossOrigin(origins = "http://localhost:4200")
public interface CharactersRepository extends PagingAndSortingRepository<Character, UUID> {
    @NonNull Page<Character> findAll(@NonNull Pageable pageable);

    @RestResource(path = "findBy", rel = "findBy")
    Page<Character> findByNameIgnoreCaseContains(@Param("name") String name, Pageable pageable);

    @RestResource(path = "findByArtifactSet", rel = "findByArtifactSet")
    Page<Character> findByArtifactSetOneIdIsOrArtifactSetTwoIdIsOrArtifactSetThreeIdIsOrArtifactSetFourIdIsOrArtifactSetFiveIdIs(
            @Param("artifactSetOneId") UUID artifactSetOneId, @Param("artifactSetTwoId") UUID artifactSetTwoId,
            @Param("artifactSetThreeId") UUID artifactSetThreeId, @Param("artifactSetFourId") UUID artifactSetFourId,
            @Param("artifactSetFiveId") UUID artifactSetFiveId, Pageable pageable);
}
