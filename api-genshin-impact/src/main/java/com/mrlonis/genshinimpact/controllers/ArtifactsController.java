package com.mrlonis.genshinimpact.controllers;

import com.mrlonis.genshinimpact.entities.Artifact;
import com.mrlonis.genshinimpact.repositories.ArtifactsRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
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
    public Artifact getArtifact(@RequestParam("id") UUID id) {
        return artifactsRepository.findById(id);
    }
}
