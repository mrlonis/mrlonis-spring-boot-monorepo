package com.mrlonis.genshinimpact.controllers;

import com.mrlonis.genshinimpact.dto.ArtifactBreakdown;
import com.mrlonis.genshinimpact.entities.Artifact;
import com.mrlonis.genshinimpact.entities.ArtifactSet;
import com.mrlonis.genshinimpact.entities.Character;
import com.mrlonis.genshinimpact.repositories.ArtifactSetsRepository;
import com.mrlonis.genshinimpact.repositories.ArtifactsRepository;
import com.mrlonis.genshinimpact.repositories.CharactersRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/v2")
@AllArgsConstructor
public class ArtifactBreakdownController {
    private CharactersRepository charactersRepository;
    private ArtifactsRepository artifactsRepository;
    private ArtifactSetsRepository artifactSetsRepository;

    @GetMapping("/artifactBreakdown")
    ArtifactBreakdown getArtifactBreakdownForArtifact(@Param("artifactId") UUID artifactId) {
        Artifact artifact = artifactsRepository.findById(artifactId);
        if (artifact == null) {
            throw new RuntimeException("Artifact not found");
        }

        List<ArtifactSet> artifactSets =
                artifactSetsRepository.findByArtifactOneIdIsOrArtifactTwoIdIs(artifact.getId(), artifact.getId());

        ArtifactBreakdown artifactBreakdown = ArtifactBreakdown.builder()
                                                               .id(artifact.getId())
                                                               .name(artifact.getName())
                                                               .imageUrl(artifact.getImageUrl())
                                                               .onePieceSetEffect(artifact.getOnePieceSetEffect())
                                                               .twoPieceSetEffect(artifact.getTwoPieceSetEffect())
                                                               .fourPieceSetEffect(artifact.getFourPieceSetEffect())
                                                               .build();
        if (artifactSets == null || artifactSets.isEmpty()) {
            return artifactBreakdown;
        }

        List<Character> characters = new LinkedList<>();
        for (ArtifactSet artifactSet : artifactSets) {
            Page<Character> newCharacters =
                    charactersRepository.findByArtifactSetOneIdIsOrArtifactSetTwoIdIsOrArtifactSetThreeIdIsOrArtifactSetFourIdIsOrArtifactSetFiveIdIs(
                            artifactSet.getId(), artifactSet.getId(), artifactSet.getId(), artifactSet.getId(),
                            artifactSet.getId(), Pageable.ofSize(100));

            if (newCharacters == null || newCharacters.isEmpty()) {
                continue;
            }

            characters.addAll(newCharacters.stream().toList());
        }

        List<String> sandsStats = new ArrayList<>();
        List<String> gobletStats = new ArrayList<>();
        List<String> circletStats = new ArrayList<>();
        List<String> substats = new ArrayList<>();

        for (Character character : characters) {
            if (!sandsStats.contains(character.getSandsStat())) {
                sandsStats.add(character.getSandsStat());
            }

            if (!gobletStats.contains(character.getGobletStat())) {
                gobletStats.add(character.getGobletStat());
            }

            if (!circletStats.contains(character.getCircletStat())) {
                circletStats.add(character.getCircletStat());
            }

            if (!substats.contains(character.getSubstatOne())) {
                substats.add(character.getSubstatOne());
            }

            if (!substats.contains(character.getSubstatTwo())) {
                substats.add(character.getSubstatTwo());
            }

            if (!substats.contains(character.getSubstatThree())) {
                substats.add(character.getSubstatThree());
            }
        }

        artifactBreakdown.setSandsStats(sandsStats);
        artifactBreakdown.setGobletStats(gobletStats);
        artifactBreakdown.setCircletStats(circletStats);
        artifactBreakdown.setSubstats(substats);

        return artifactBreakdown;
    }
}
