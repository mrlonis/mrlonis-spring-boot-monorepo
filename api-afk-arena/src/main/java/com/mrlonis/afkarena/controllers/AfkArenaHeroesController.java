package com.mrlonis.afkarena.controllers;

import com.mrlonis.afkarena.entities.AfkArenaHeroes;
import com.mrlonis.afkarena.services.AfkArenaHeroesService;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Validated
@RestController
@RequestMapping("/afkarena")
public class AfkArenaHeroesController {
    private final AfkArenaHeroesService afkArenaHeroesService;

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
