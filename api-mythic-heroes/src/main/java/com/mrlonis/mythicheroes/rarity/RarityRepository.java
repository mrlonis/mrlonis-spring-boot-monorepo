package com.mrlonis.mythicheroes.rarity;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;
import java.util.UUID;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "rarity", exported = false)
@CrossOrigin(origins = {"http://localhost:4200"})
public interface RarityRepository extends PagingAndSortingRepository<Rarity, UUID> {
    @RestResource(path = "findBy", rel = "findBy")
    List<Rarity> findByNameIgnoreCaseContains(@Param("name") String name);
}
