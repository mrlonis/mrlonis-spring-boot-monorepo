package com.mrlonis.genshinimpact.repositories;

import com.mrlonis.genshinimpact.entities.ArtifactSet;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;
import java.util.UUID;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "artifact-sets")
@CrossOrigin(origins = "http://localhost:4200")
public interface ArtifactSetsRepository extends PagingAndSortingRepository<ArtifactSet, UUID> {
    List<ArtifactSet> findAll();

    @RestResource(path = "findBy", rel = "findBy")
    List<ArtifactSet> findByNameIgnoreCaseContains(@Param("name") String name);
}

