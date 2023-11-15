package com.mrlonis.afkarena.repositories;

import com.mrlonis.afkarena.entities.AfkArenaHeroes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;
import java.util.UUID;

@RepositoryRestResource(collectionResourceRel = "afkArenaHeroes", path = "afkArenaHeroes")
public interface AfkArenaHeroesRepository extends JpaRepository<AfkArenaHeroes, UUID> {
    List<AfkArenaHeroes> findAll();
}
