package com.mrlonis.afkarena.controllers;

import com.mrlonis.afkarena.entities.AfkArenaHeroes;
import com.mrlonis.afkarena.services.AfkArenaHeroesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Validated
@RestController
@RequestMapping("/afkarena")
public class AfkArenaHeroesController {
    private final AfkArenaHeroesService afkArenaHeroesService;

    @Autowired
    public AfkArenaHeroesController(AfkArenaHeroesService afkArenaHeroesService) {
        this.afkArenaHeroesService = afkArenaHeroesService;
    }

    @ResponseBody
    @GetMapping(path = "/getAll", produces = MediaType.APPLICATION_JSON_VALUE)
    @CrossOrigin(origins = "http://localhost:4200")
    public List<AfkArenaHeroes> getAll() {
        return this.afkArenaHeroesService.getAll();
    }
}
