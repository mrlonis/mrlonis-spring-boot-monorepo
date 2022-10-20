package com.mrlonis.mythicheroes.faction;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;
import java.util.UUID;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "faction", exported = false)
@CrossOrigin(origins = {"http://localhost:4202"})
public interface FactionRepository extends PagingAndSortingRepository<Faction, UUID> {
    @RestResource(path = "findBy", rel = "findBy")
    List<Faction> findByNameIgnoreCaseContains(@Param("name") String name);
}

