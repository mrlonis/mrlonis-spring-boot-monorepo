package com.mrlonis.mythicheroes.mythichero;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.UUID;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "mythicHero")
@CrossOrigin(origins = {"http://localhost:4202"})
public interface MythicHeroRepository extends PagingAndSortingRepository<MythicHero, UUID> {
    @RestResource(path = "findBy", rel = "findBy")
    Page<MythicHero> findByNameIgnoreCaseContainsAndFaction_NameIgnoreCaseContainsAndRarity_NameIgnoreCaseContainsAndType_NameIgnoreCaseContains(
            @Param("name") String name, @Param("factionName") String factionName,
            @Param("rarityName") String rarityName, @Param("typeName") String typeName, Pageable pageable);

}
