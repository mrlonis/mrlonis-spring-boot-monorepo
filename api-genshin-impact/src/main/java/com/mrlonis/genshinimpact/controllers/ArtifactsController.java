package com.mrlonis.genshinimpact.controllers;

import com.mrlonis.genshinimpact.entities.Artifact;
import com.mrlonis.genshinimpact.exceptions.BadRequestException;
import com.mrlonis.genshinimpact.exceptions.NotFoundException;
import com.mrlonis.genshinimpact.repositories.ArtifactsRepository;
import java.util.List;
import java.util.Optional;
import java.util.UUID;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v2")
@AllArgsConstructor
@CrossOrigin(origins = "http://localhost:3000")
public class ArtifactsController {
    private final ArtifactsRepository artifactsRepository;

    @GetMapping("/artifacts")
    public List<Artifact> getArtifacts() {
        return artifactsRepository.findAll();
    }

    @GetMapping("/artifact")
    public Artifact getArtifact(
            @RequestParam(value = "id", required = false) UUID id,
            @RequestParam(value = "name", required = false) String name)
            throws NotFoundException, BadRequestException {
        if (id == null && name == null) {
            throw new BadRequestException("Must provide either an id or a name");
        }
        if (id == null) {
            Optional<Artifact> repositoryArtifact = artifactsRepository.findByNameIgnoreCaseIs(name);
            if (repositoryArtifact.isEmpty()) {
                throw new NotFoundException("Artifact not found");
            }
            return repositoryArtifact.get();
        }

        Optional<Artifact> artifact = artifactsRepository.findById(id);
        if (artifact.isEmpty()) {
            throw new NotFoundException("Artifact not found");
        }

        return artifact.get();
    }
}
