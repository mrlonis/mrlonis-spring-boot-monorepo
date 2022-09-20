package com.mrlonis.genshinimpact.controllers;

import com.mrlonis.genshinimpact.entities.Character;
import com.mrlonis.genshinimpact.repositories.CharactersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v2")
public class CharactersController {
    private final CharactersRepository charactersRepository;

    @Autowired
    CharactersController(CharactersRepository charactersRepository) {
        this.charactersRepository = charactersRepository;
    }

    @GetMapping("/characters")
    Page<Character> getAll(@PageableDefault(page = 0, size = 100) Pageable page) {
        return this.charactersRepository.findAll(page);
    }
}
