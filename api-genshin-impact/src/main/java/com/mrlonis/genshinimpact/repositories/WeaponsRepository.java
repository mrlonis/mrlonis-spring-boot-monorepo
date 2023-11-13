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

    Weapon findById(UUID id);

    @RestResource(path = "findByName", rel = "findByName")
    Weapon findByNameIgnoreCaseContains(@Param("name") String name);

    @RestResource(path = "findByWeaponType", rel = "findByWeaponType")
    List<Weapon> findByWeaponTypeIgnoreCaseContains(@Param("weaponType") String weaponType);
}
