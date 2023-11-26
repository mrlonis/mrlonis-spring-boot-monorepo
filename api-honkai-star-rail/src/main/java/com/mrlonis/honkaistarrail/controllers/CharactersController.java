package com.mrlonis.honkaistarrail.controllers;

import com.mrlonis.honkaistarrail.entities.Character;
import com.mrlonis.honkaistarrail.repositories.CharactersRepository;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;
import java.util.UUID;

@RestController
@RequestMapping("/api/v2")
@AllArgsConstructor
@Slf4j
public class CharactersController {

    private CharactersRepository charactersRepository;

    @GetMapping("/characters/{id}")
    public ResponseEntity<Character> getCharacterById(@PathVariable UUID id) {
        boolean exists = charactersRepository.existsById(id);
        log.info(String.format("Character with id %s exists: %s", id, exists));
        Optional<Character> character = charactersRepository.findById(id);
        return character.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
}
