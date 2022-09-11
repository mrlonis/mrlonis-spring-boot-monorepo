package com.mrlonis.afkarena.repositories;

import com.mrlonis.afkarena.entities.AfkArenaHeroes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

@RepositoryRestResource(collectionResourceRel = "afkArenaHeroes", path = "afkArenaHeroes")
public interface AfkArenaHeroesRepository extends JpaRepository<AfkArenaHeroes, Integer> {
    List<AfkArenaHeroes> findAll();
}
