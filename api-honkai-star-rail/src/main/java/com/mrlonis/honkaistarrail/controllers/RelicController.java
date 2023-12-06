package com.mrlonis.honkaistarrail.controllers;

import com.mrlonis.honkaistarrail.entities.Relic;
import com.mrlonis.honkaistarrail.exceptions.BadRequestException;
import com.mrlonis.honkaistarrail.exceptions.NotFoundException;
import com.mrlonis.honkaistarrail.repositories.RelicsRepository;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@RestController
@RequestMapping("/api/v2")
@AllArgsConstructor
@CrossOrigin(origins = "http://localhost:3001")
public class RelicController {
    private final RelicsRepository relicsRepository;

    @GetMapping("/relics")
    public List<Relic> getRelics() {
        return relicsRepository.findAll();
    }

    @GetMapping("/relic")
    public Relic getRelic(@RequestParam(value = "id", required = false) UUID id,
                          @RequestParam(value = "name", required = false) String name)
            throws NotFoundException, BadRequestException {
        if (id == null && name == null) {
            throw new BadRequestException("Must provide either an id or a name");
        }
        if (id == null) {
            Optional<Relic> relic = relicsRepository.findByNameIgnoreCaseIs(name);
            if (relic.isEmpty()) {
                throw new NotFoundException("Relic not found");
            }
            return relic.get();
        }

        Optional<Relic> relic = relicsRepository.findById(id);
        if (relic.isEmpty()) {
            throw new NotFoundException("Relic not found");
        }

        return relic.get();
    }
}
