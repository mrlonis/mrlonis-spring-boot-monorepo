package com.mrlonis.honkaistarrail.controllers;

import com.mrlonis.honkaistarrail.entities.Character;
import com.mrlonis.honkaistarrail.exceptions.BadRequestException;
import com.mrlonis.honkaistarrail.exceptions.NotFoundException;
import com.mrlonis.honkaistarrail.repositories.CharactersRepository;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Deque;
import java.util.List;
import java.util.Optional;
import java.util.UUID;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v2")
@AllArgsConstructor
@Slf4j
@CrossOrigin(origins = "http://localhost:3001")
public class CharacterController {

    private CharactersRepository charactersRepository;

    @GetMapping("/characters")
    public ResponseEntity<List<Character>> getCharacters(@RequestParam(required = false) String[] sort) {
        log.info("CharactersController: getCharacters(): Starting...");
        log.info("CharactersController: getCharacters(): sort = " + Arrays.toString(sort));

        List<Character> characters;
        if (sort == null || sort.length == 0) {
            return ResponseEntity.ok(charactersRepository.findAll());
        }

        Deque<Sort> sortValues = new ArrayDeque<>();
        for (String sortParam : sort) {
            log.info("CharactersController: getCharacters(): sortParam = " + sortParam);

            if (sortParam.contains(",")) {
                String[] sortParams = sortParam.split(",");
                Sort sortValue1 = Sort.by(Sort.Direction.fromString(sortParams[1]), sortParams[0]);
                sortValues.add(sortValue1);
            } else {
                Sort sortValue1 = Sort.by(Sort.Direction.ASC, sortParam);
                sortValues.add(sortValue1);
            }
        }

        Sort combinedSort = sortValues.pop();
        while (!sortValues.isEmpty()) {
            combinedSort = combinedSort.and(sortValues.pop());
        }

        characters = charactersRepository.findAll(combinedSort);

        return ResponseEntity.ok(characters);
    }

    @GetMapping("/characters/{id}")
    public ResponseEntity<Character> getCharacterById(@PathVariable UUID id) {
        boolean exists = charactersRepository.existsById(id);
        log.info(String.format("Character with id %s exists: %s", id, exists));
        Optional<Character> character = charactersRepository.findById(id);
        return character
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/character")
    public Character getCharacter(
            @RequestParam(value = "id", required = false) UUID id,
            @RequestParam(value = "name", required = false) String name)
            throws NotFoundException, BadRequestException {
        if (id == null && name == null) {
            throw new BadRequestException("Must provide either an id or a name");
        }
        if (id == null) {
            Optional<Character> character = charactersRepository.findByNameIgnoreCaseIs(name);
            if (character.isEmpty()) {
                throw new NotFoundException("Character not found");
            }
            return character.get();
        }

        Optional<Character> character = charactersRepository.findById(id);
        if (character.isEmpty()) {
            throw new NotFoundException("Character not found");
        }

        return character.get();
    }
}
