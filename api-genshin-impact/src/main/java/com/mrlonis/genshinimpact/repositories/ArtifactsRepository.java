package com.mrlonis.genshinimpact.repositories;

import com.mrlonis.genshinimpact.entities.Artifact;
import java.util.Optional;
import java.util.UUID;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "artifacts")
@CrossOrigin(origins = "http://localhost:3000")
public interface ArtifactsRepository extends JpaRepository<Artifact, UUID> {
    @RestResource(path = "findByName", rel = "findByName")
    Optional<Artifact> findByNameIgnoreCaseIs(@Param("name") String name);
}
