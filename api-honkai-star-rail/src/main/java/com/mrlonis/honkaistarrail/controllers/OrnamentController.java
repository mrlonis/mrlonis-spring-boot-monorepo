package com.mrlonis.honkaistarrail.controllers;

import com.mrlonis.honkaistarrail.entities.Ornament;
import com.mrlonis.honkaistarrail.exceptions.BadRequestException;
import com.mrlonis.honkaistarrail.exceptions.NotFoundException;
import com.mrlonis.honkaistarrail.repositories.OrnamentsRepository;
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
public class OrnamentController {
    private final OrnamentsRepository ornamentsRepository;

    @GetMapping("/ornaments")
    public List<Ornament> getOrnament() {
        return ornamentsRepository.findAll();
    }

    @GetMapping("/ornament")
    public Ornament getOrnament(@RequestParam(value = "id", required = false) UUID id,
                                @RequestParam(value = "name", required = false) String name)
            throws NotFoundException, BadRequestException {
        if (id == null && name == null) {
            throw new BadRequestException("Must provide either an id or a name");
        }
        if (id == null) {
            Optional<Ornament> ornament = ornamentsRepository.findByNameIgnoreCaseIs(name);
            if (ornament.isEmpty()) {
                throw new NotFoundException("Ornament not found");
            }
            return ornament.get();
        }

        Optional<Ornament> ornament = ornamentsRepository.findById(id);
        if (ornament.isEmpty()) {
            throw new NotFoundException("Ornament not found");
        }

        return ornament.get();
    }
}
