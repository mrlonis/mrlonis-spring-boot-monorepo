package com.mrlonis.genshinimpact.repositories;

import com.mrlonis.genshinimpact.entities.Weapon;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;
import java.util.UUID;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "weapons")
@CrossOrigin(origins = "http://localhost:4200")
public interface WeaponsRepository extends PagingAndSortingRepository<Weapon, UUID> {
    List<Weapon> findAll();

    @RestResource(path = "findBy", rel = "findBy")
    List<Weapon> findByNameIgnoreCaseContains(@Param("name") String name);
}

