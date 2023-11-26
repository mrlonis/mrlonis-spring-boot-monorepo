package com.mrlonis.honkaistarrail.repositories;

import com.mrlonis.honkaistarrail.entities.CombatType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.Optional;
import java.util.UUID;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "combatTypes")
@CrossOrigin(origins = "http://localhost:4200")
public interface CombatTypesRepository extends JpaRepository<CombatType, UUID> {
    @RestResource(path = "findByName", rel = "findByName")
    Optional<CombatType> findByNameIgnoreCaseIs(@Param("name") String name);
}
