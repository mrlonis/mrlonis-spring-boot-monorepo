package com.mrlonis.afkarena.services;

import com.mrlonis.afkarena.entities.AfkArenaHeroes;
import com.mrlonis.afkarena.repositories.AfkArenaHeroesRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AfkArenaHeroesService {
    private final AfkArenaHeroesRepository afkArenaHeroesRepository;

    public AfkArenaHeroesService(AfkArenaHeroesRepository afkArenaHeroesRepository) {
        this.afkArenaHeroesRepository = afkArenaHeroesRepository;
    }

    public List<AfkArenaHeroes> getAll() {
        return afkArenaHeroesRepository.findAll();
    }
}
