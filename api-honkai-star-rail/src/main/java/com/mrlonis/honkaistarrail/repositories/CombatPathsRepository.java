package com.mrlonis.honkaistarrail.repositories;

import com.mrlonis.honkaistarrail.entities.CombatPath;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.Optional;
import java.util.UUID;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "combatPaths")
@CrossOrigin(origins = "http://localhost:3001")
public interface CombatPathsRepository extends JpaRepository<CombatPath, UUID> {
    @RestResource(path = "findByName", rel = "findByName")
    Optional<CombatPath> findByNameIgnoreCaseIs(@Param("name") String name);
}
