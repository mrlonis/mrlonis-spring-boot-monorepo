package com.mrlonis.genshinimpact.repositories;

import com.mrlonis.genshinimpact.entities.Artifact;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;
import java.util.UUID;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "artifacts")
@CrossOrigin(origins = "http://localhost:4200")
public interface ArtifactsRepository extends PagingAndSortingRepository<Artifact, UUID> {
    List<Artifact> findAll();

    @RestResource(path = "findById", rel = "findById")
    Artifact findById(@Param("id") UUID id);

    @RestResource(path = "findBy", rel = "findBy")
    Artifact findByNameIgnoreCaseContains(@Param("name") String name);
}
