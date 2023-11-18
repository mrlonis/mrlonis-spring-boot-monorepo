package com.mrlonis.genshinimpact.controllers;

import com.mrlonis.genshinimpact.dto.ArtifactBreakdown;
import com.mrlonis.genshinimpact.entities.Artifact;
import com.mrlonis.genshinimpact.entities.Character;
import com.mrlonis.genshinimpact.enums.CircletMainStats;
import com.mrlonis.genshinimpact.enums.GobletMainStats;
import com.mrlonis.genshinimpact.enums.SandsMainStats;
import com.mrlonis.genshinimpact.enums.Substats;
import com.mrlonis.genshinimpact.exceptions.NotFoundException;
import com.mrlonis.genshinimpact.repositories.ArtifactsRepository;
import com.mrlonis.genshinimpact.repositories.CharactersRepository;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@RestController
@RequestMapping("/api/v2")
@AllArgsConstructor
@Slf4j
public class ArtifactBreakdownController {
    private CharactersRepository charactersRepository;
    private ArtifactsRepository artifactsRepository;

    @GetMapping("/artifactBreakdown")
    ArtifactBreakdown getArtifactBreakdownForArtifact(@RequestParam UUID artifactId) throws NotFoundException {
        log.info("Getting artifact breakdown for artifact: {}", artifactId);
        Optional<Artifact> repositoryArtifact = artifactsRepository.findById(artifactId);
        if (repositoryArtifact.isEmpty()) {
            throw new NotFoundException("Artifact not found");
        }

        Artifact artifact = repositoryArtifact.get();
        ArtifactBreakdown artifactBreakdown = ArtifactBreakdown.builder()
                                                               .id(artifact.getId())
                                                               .name(artifact.getName())
                                                               .imageUrl(artifact.getImageUrl())
                                                               .onePieceSetEffect(artifact.getOnePieceSetEffect())
                                                               .twoPieceSetEffect(artifact.getTwoPieceSetEffect())
                                                               .fourPieceSetEffect(artifact.getFourPieceSetEffect())
                                                               .build();

        List<Character> characters =
                charactersRepository.findByArtifactSetOneIdFirstIsOrArtifactSetOneIdSecondIsOrArtifactSetTwoIdFirstIsOrArtifactSetTwoIdSecondIsOrArtifactSetThreeIdFirstIsOrArtifactSetThreeIdSecondIsOrArtifactSetFourIdFirstIsOrArtifactSetFourIdSecondIsOrArtifactSetFiveIdFirstIsOrArtifactSetFiveIdSecondIs(
                        artifact.getId(),
                        artifact.getId(),
                        artifact.getId(),
                        artifact.getId(),
                        artifact.getId(),
                        artifact.getId(),
                        artifact.getId(),
                        artifact.getId(),
                        artifact.getId(),
                        artifact.getId());

        if (characters == null || characters.isEmpty()) {
            log.info("No Characters use artifact: {}", artifact.getName());
            return artifactBreakdown;
        }

        List<SandsMainStats> sandsStats = new ArrayList<>();
        List<GobletMainStats> gobletStats = new ArrayList<>();
        List<CircletMainStats> circletStats = new ArrayList<>();
        List<Substats> substats = new ArrayList<>();

        processCharacters(characters, sandsStats, gobletStats, circletStats, substats);
        processCircletStats(circletStats);
        processSubstats(substats);

        artifactBreakdown.setSandsStats(sandsStats);
        artifactBreakdown.setGobletStats(gobletStats);
        artifactBreakdown.setCircletStats(circletStats);
        artifactBreakdown.setSubstats(substats);

        return artifactBreakdown;
    }

    private void processCharacters(List<Character> characters,
                                   List<SandsMainStats> sandsStats,
                                   List<GobletMainStats> gobletStats,
                                   List<CircletMainStats> circletStats,
                                   List<Substats> substats) {
        for (Character character : characters) {
            if (character.getSandsStatOne() != null && !sandsStats.contains(character.getSandsStatOne())) {
                sandsStats.add(character.getSandsStatOne());
            }

            if (character.getSandsStatTwo() != null && !sandsStats.contains(character.getSandsStatTwo())) {
                sandsStats.add(character.getSandsStatTwo());
            }

            if (character.getSandsStatThree() != null && !sandsStats.contains(character.getSandsStatThree())) {
                sandsStats.add(character.getSandsStatThree());
            }

            if (character.getGobletStatOne() != null && !gobletStats.contains(character.getGobletStatOne())) {
                gobletStats.add(character.getGobletStatOne());
            }

            if (character.getGobletStatTwo() != null && !gobletStats.contains(character.getGobletStatTwo())) {
                gobletStats.add(character.getGobletStatTwo());
            }

            if (character.getGobletStatThree() != null && !gobletStats.contains(character.getGobletStatThree())) {
                gobletStats.add(character.getGobletStatThree());
            }

            if (character.getCircletStatOne() != null && !circletStats.contains(character.getCircletStatOne())) {
                circletStats.add(character.getCircletStatOne());
            }

            if (character.getCircletStatTwo() != null && !circletStats.contains(character.getCircletStatTwo())) {
                circletStats.add(character.getCircletStatTwo());
            }

            if (character.getCircletStatThree() != null && !circletStats.contains(character.getCircletStatThree())) {
                circletStats.add(character.getCircletStatThree());
            }

            if (character.getSubstatOne() != null && !substats.contains(character.getSubstatOne())) {
                substats.add(character.getSubstatOne());
            }

            if (character.getSubstatTwo() != null && !substats.contains(character.getSubstatTwo())) {
                substats.add(character.getSubstatTwo());
            }

            if (character.getSubstatThree() != null && !substats.contains(character.getSubstatThree())) {
                substats.add(character.getSubstatThree());
            }
        }
    }

    private void processCircletStats(List<CircletMainStats> circletStats) {
        if (circletStats.contains(CircletMainStats.CRITICAL_RATE_AND_DAMAGE)) {
            circletStats.remove(CircletMainStats.CRITICAL_RATE_AND_DAMAGE);

            if (!circletStats.contains(CircletMainStats.CRITICAL_RATE)) {
                circletStats.add(CircletMainStats.CRITICAL_RATE);
            }

            if (!circletStats.contains(CircletMainStats.CRITICAL_DAMAGE)) {
                circletStats.add(CircletMainStats.CRITICAL_DAMAGE);
            }
        }
    }

    private void processSubstats(List<Substats> substats) {
        if (substats.contains(Substats.CRITICAL_RATE_AND_DAMAGE)) {
            substats.remove(Substats.CRITICAL_RATE_AND_DAMAGE);

            if (!substats.contains(Substats.CRITICAL_RATE)) {
                substats.add(Substats.CRITICAL_RATE);
            }

            if (!substats.contains(Substats.CRITICAL_DAMAGE)) {
                substats.add(Substats.CRITICAL_DAMAGE);
            }
        }
    }
}
