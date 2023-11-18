package com.mrlonis.genshinimpact.controllers;

import com.mrlonis.genshinimpact.entities.Artifact;
import com.mrlonis.genshinimpact.repositories.ArtifactsRepository;
import lombok.AllArgsConstructor;
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
public class ArtifactsController {
    private final ArtifactsRepository artifactsRepository;

    @GetMapping("/artifacts")
    public List<Artifact> getArtifacts() {
        return artifactsRepository.findAll();
    }

    @GetMapping("/artifact")
    public Artifact getArtifact(@RequestParam(value = "id", required = false) UUID id,
                                @RequestParam(value = "name", required = false) String name) {
        if (id == null && name == null) {
            throw new RuntimeException("Must provide either an id or a name");
        }
        if (id == null) {
            Optional<Artifact> repositoryArtifact = artifactsRepository.findByNameIgnoreCaseContains(name);
            if (repositoryArtifact.isEmpty()) {
                throw new RuntimeException("Artifact not found");
            }
            return repositoryArtifact.get();
        }

        Optional<Artifact> artifact = artifactsRepository.findById(id);
        if (artifact.isEmpty()) {
            throw new RuntimeException("Artifact not found");
        }

        return artifact.get();
    }
}
