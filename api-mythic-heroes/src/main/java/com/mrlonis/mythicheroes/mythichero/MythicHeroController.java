package com.mrlonis.mythicheroes.mythichero;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v2")
public class MythicHeroController {
    private final MythicHeroService mythicHeroService;

    MythicHeroController(MythicHeroService mythicHeroService) {
        this.mythicHeroService = mythicHeroService;
    }

    @GetMapping("/mythicHero")
    Page<MythicHero> get(@RequestParam(required = false, name = "name") String name,
                         @RequestParam(required = false, name = "faction.name") String factionName,
                         @RequestParam(required = false, name = "rarity.name") String rarityName,
                         @RequestParam(required = false, name = "type.name") String typeName,
                         @PageableDefault(page = 0, size = 100) Pageable page) {
        return this.mythicHeroService.get(name, factionName, rarityName, typeName, page);
    }
}
