package com.mrlonis.afkarena.services;

import com.mrlonis.afkarena.entities.AfkArenaHeroes;
import com.mrlonis.afkarena.repositories.AfkArenaHeroesRepository;
import com.mrlonis.afkarena.repositories.ProjectRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AfkArenaHeroesService {
    private final ProjectRepository projectRepository;
    private final AfkArenaHeroesRepository afkArenaHeroesRepository;

    public AfkArenaHeroesService(AfkArenaHeroesRepository afkArenaHeroesRepository,
                                 ProjectRepository projectRepository) {
        this.afkArenaHeroesRepository = afkArenaHeroesRepository;
        this.projectRepository = projectRepository;
    }

    public List<AfkArenaHeroes> getAll() {
        return afkArenaHeroesRepository.findAll();
    }
}
