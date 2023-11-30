package com.mrlonis.honkaistarrail.repositories;

import com.mrlonis.honkaistarrail.entities.Ornament;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.Optional;
import java.util.UUID;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "ornaments")
@CrossOrigin(origins = "http://localhost:3001")
public interface OrnamentsRepository extends JpaRepository<Ornament, UUID> {
    @RestResource(path = "findByName", rel = "findByName")
    Optional<Ornament> findByNameIgnoreCaseIs(@Param("name") String name);
}
