package com.mrlonis.genshinimpact.repositories;

import com.mrlonis.genshinimpact.entities.Weapon;
import com.mrlonis.genshinimpact.enums.WeaponTypes;
import java.util.List;
import java.util.Optional;
import java.util.UUID;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "weapons")
@CrossOrigin(origins = "http://localhost:3000")
public interface WeaponsRepository extends JpaRepository<Weapon, UUID> {
    @RestResource(path = "findByName", rel = "findByName")
    Optional<Weapon> findByNameIgnoreCaseIs(@Param("name") String name);

    @RestResource(path = "findByWeaponType", rel = "findByWeaponType")
    List<Weapon> findByWeaponType(@Param("weaponType") WeaponTypes weaponType);
}
