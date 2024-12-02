package com.mrlonis.honkaistarrail.repositories;

import com.mrlonis.honkaistarrail.entities.LightCone;
import java.util.Optional;
import java.util.UUID;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "lightCones")
@CrossOrigin(origins = "http://localhost:3001")
public interface LightConesRepository extends JpaRepository<LightCone, UUID> {
    @RestResource(path = "findByName", rel = "findByName")
    Optional<LightCone> findByNameIgnoreCaseIs(@Param("name") String name);
}
