package com.mrlonis.genshinimpact.controllers;

import com.mrlonis.genshinimpact.dto.ArtifactBreakdown;
import com.mrlonis.genshinimpact.dto.ArtifactBreakdownCharacter;
import com.mrlonis.genshinimpact.entities.Artifact;
import com.mrlonis.genshinimpact.entities.Character;
import com.mrlonis.genshinimpact.enums.CircletMainStats;
import com.mrlonis.genshinimpact.enums.GobletMainStats;
import com.mrlonis.genshinimpact.enums.SandsMainStats;
import com.mrlonis.genshinimpact.enums.Substats;
import com.mrlonis.genshinimpact.exceptions.NotFoundException;
import com.mrlonis.genshinimpact.repositories.ArtifactsRepository;
import com.mrlonis.genshinimpact.repositories.CharactersRepository;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v2")
@AllArgsConstructor
@Slf4j
@CrossOrigin(origins = "http://localhost:3000")
public class ArtifactBreakdownController {
    private CharactersRepository charactersRepository;
    private ArtifactsRepository artifactsRepository;

    @GetMapping("/artifactBreakdown")
    public ArtifactBreakdown getArtifactBreakdownForArtifact(
            @RequestParam UUID artifactId, @RequestParam int artifactDepth) throws NotFoundException {
        log.info("Getting artifact breakdown for artifact: {}", artifactId);
        if (artifactId == null) {
            throw new IllegalArgumentException("Artifact ID cannot be null");
        }
        Optional<Artifact> repositoryArtifact = artifactsRepository.findById(artifactId);
        if (repositoryArtifact.isEmpty()) {
            throw new NotFoundException("Artifact not found");
        }
        if (artifactDepth < 1 || artifactDepth > 5) {
            throw new IllegalArgumentException("Artifact depth must be between 1 and 5");
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

        List<Character> characters;
        if (artifactDepth == 1) {
            characters = charactersRepository.findByArtifactSetOneIdFirstIsOrArtifactSetOneIdSecondIs(
                    artifact.getId(), artifact.getId());
        } else if (artifactDepth == 2) {
            characters =
                    charactersRepository
                            .findByArtifactSetOneIdFirstIsOrArtifactSetOneIdSecondIsOrArtifactSetTwoIdFirstIsOrArtifactSetTwoIdSecondIs(
                                    artifact.getId(), artifact.getId(), artifact.getId(), artifact.getId());
        } else if (artifactDepth == 3) {
            characters = charactersRepository
                    .findByArtifactSetOneIdFirstIsOrArtifactSetOneIdSecondIsOrArtifactSetTwoIdFirstIsOrArtifactSetTwoIdSecondIsOrArtifactSetThreeIdFirstIsOrArtifactSetThreeIdSecondIs(
                            artifact.getId(),
                            artifact.getId(),
                            artifact.getId(),
                            artifact.getId(),
                            artifact.getId(),
                            artifact.getId());
        } else if (artifactDepth == 4) {
            characters = charactersRepository
                    .findByArtifactSetOneIdFirstIsOrArtifactSetOneIdSecondIsOrArtifactSetTwoIdFirstIsOrArtifactSetTwoIdSecondIsOrArtifactSetThreeIdFirstIsOrArtifactSetThreeIdSecondIsOrArtifactSetFourIdFirstIsOrArtifactSetFourIdSecondIs(
                            artifact.getId(),
                            artifact.getId(),
                            artifact.getId(),
                            artifact.getId(),
                            artifact.getId(),
                            artifact.getId(),
                            artifact.getId(),
                            artifact.getId());
        } else {
            characters = charactersRepository
                    .findByArtifactSetOneIdFirstIsOrArtifactSetOneIdSecondIsOrArtifactSetTwoIdFirstIsOrArtifactSetTwoIdSecondIsOrArtifactSetThreeIdFirstIsOrArtifactSetThreeIdSecondIsOrArtifactSetFourIdFirstIsOrArtifactSetFourIdSecondIsOrArtifactSetFiveIdFirstIsOrArtifactSetFiveIdSecondIs(
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
        }

        if (characters == null || characters.isEmpty()) {
            log.info("No Characters use artifact: {}", artifact.getName());
            return artifactBreakdown;
        }

        List<ArtifactBreakdownCharacter> artifactBreakdownCharacters = new ArrayList<>();
        Map<SandsMainStats, List<ArtifactBreakdownCharacter>> sandsStats = new EnumMap<>(SandsMainStats.class);
        Map<GobletMainStats, List<ArtifactBreakdownCharacter>> gobletStats = new EnumMap<>(GobletMainStats.class);
        Map<CircletMainStats, List<ArtifactBreakdownCharacter>> circletStats = new EnumMap<>(CircletMainStats.class);

        processCharacters(characters, artifactBreakdownCharacters, sandsStats, gobletStats, circletStats);
        processCircletStats(circletStats);

        artifactBreakdown.setCharacters(artifactBreakdownCharacters);
        artifactBreakdown.setSandsStats(sandsStats);
        artifactBreakdown.setGobletStats(gobletStats);
        artifactBreakdown.setCircletStats(circletStats);

        return artifactBreakdown;
    }

    private void processCharacters(
            List<Character> characters,
            List<ArtifactBreakdownCharacter> artifactBreakdownCharacters,
            Map<SandsMainStats, List<ArtifactBreakdownCharacter>> sandsStats,
            Map<GobletMainStats, List<ArtifactBreakdownCharacter>> gobletStats,
            Map<CircletMainStats, List<ArtifactBreakdownCharacter>> circletStats) {
        for (Character character : characters) {
            ArtifactBreakdownCharacter artifactBreakdownCharacter = ArtifactBreakdownCharacter.builder()
                    .id(character.getId())
                    .name(character.getName())
                    .imageUrl(character.getImageUrl())
                    .substats(buildSubstats(character))
                    .build();
            artifactBreakdownCharacters.add(artifactBreakdownCharacter);
            addSandsStats(character, artifactBreakdownCharacter, sandsStats);
            addGobletStats(character, artifactBreakdownCharacter, gobletStats);
            addCircletStats(character, artifactBreakdownCharacter, circletStats);
        }
    }

    private void addSandsStats(
            Character character,
            ArtifactBreakdownCharacter artifactBreakdownCharacter,
            Map<SandsMainStats, List<ArtifactBreakdownCharacter>> sandsStats) {
        if (character.getSandsStatOne() != null) {
            if (!sandsStats.containsKey(character.getSandsStatOne())) {
                sandsStats.put(character.getSandsStatOne(), List.of(artifactBreakdownCharacter));
            } else {
                List<ArtifactBreakdownCharacter> characters = sandsStats.get(character.getSandsStatOne());
                if (!characters.contains(artifactBreakdownCharacter)) {
                    List<ArtifactBreakdownCharacter> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(artifactBreakdownCharacter);
                    sandsStats.put(character.getSandsStatOne(), newCharacters);
                }
            }
        }

        if (character.getSandsStatTwo() != null) {
            if (!sandsStats.containsKey(character.getSandsStatTwo())) {
                sandsStats.put(character.getSandsStatTwo(), List.of(artifactBreakdownCharacter));
            } else {
                List<ArtifactBreakdownCharacter> characters = sandsStats.get(character.getSandsStatTwo());
                if (!characters.contains(artifactBreakdownCharacter)) {
                    List<ArtifactBreakdownCharacter> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(artifactBreakdownCharacter);
                    sandsStats.put(character.getSandsStatTwo(), newCharacters);
                }
            }
        }

        if (character.getSandsStatThree() != null) {
            if (!sandsStats.containsKey(character.getSandsStatThree())) {
                sandsStats.put(character.getSandsStatThree(), List.of(artifactBreakdownCharacter));
            } else {
                List<ArtifactBreakdownCharacter> characters = sandsStats.get(character.getSandsStatThree());
                if (!characters.contains(artifactBreakdownCharacter)) {
                    List<ArtifactBreakdownCharacter> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(artifactBreakdownCharacter);
                    sandsStats.put(character.getSandsStatThree(), newCharacters);
                }
            }
        }
    }

    private void addGobletStats(
            Character character,
            ArtifactBreakdownCharacter artifactBreakdownCharacter,
            Map<GobletMainStats, List<ArtifactBreakdownCharacter>> gobletStats) {
        if (character.getGobletStatOne() != null) {
            if (!gobletStats.containsKey(character.getGobletStatOne())) {
                gobletStats.put(character.getGobletStatOne(), List.of(artifactBreakdownCharacter));
            } else {
                List<ArtifactBreakdownCharacter> characters = gobletStats.get(character.getGobletStatOne());
                if (!characters.contains(artifactBreakdownCharacter)) {
                    List<ArtifactBreakdownCharacter> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(artifactBreakdownCharacter);
                    gobletStats.put(character.getGobletStatOne(), newCharacters);
                }
            }
        }

        if (character.getGobletStatTwo() != null) {
            if (!gobletStats.containsKey(character.getGobletStatTwo())) {
                gobletStats.put(character.getGobletStatTwo(), List.of(artifactBreakdownCharacter));
            } else {
                List<ArtifactBreakdownCharacter> characters = gobletStats.get(character.getGobletStatTwo());
                if (!characters.contains(artifactBreakdownCharacter)) {
                    List<ArtifactBreakdownCharacter> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(artifactBreakdownCharacter);
                    gobletStats.put(character.getGobletStatTwo(), newCharacters);
                }
            }
        }

        if (character.getGobletStatThree() != null) {
            if (!gobletStats.containsKey(character.getGobletStatThree())) {
                gobletStats.put(character.getGobletStatThree(), List.of(artifactBreakdownCharacter));
            } else {
                List<ArtifactBreakdownCharacter> characters = gobletStats.get(character.getGobletStatThree());
                if (!characters.contains(artifactBreakdownCharacter)) {
                    List<ArtifactBreakdownCharacter> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(artifactBreakdownCharacter);
                    gobletStats.put(character.getGobletStatThree(), newCharacters);
                }
            }
        }
    }

    private void addCircletStats(
            Character character,
            ArtifactBreakdownCharacter artifactBreakdownCharacter,
            Map<CircletMainStats, List<ArtifactBreakdownCharacter>> circletStats) {
        if (character.getCircletStatOne() != null) {
            if (!circletStats.containsKey(character.getCircletStatOne())) {
                circletStats.put(character.getCircletStatOne(), List.of(artifactBreakdownCharacter));
            } else {
                List<ArtifactBreakdownCharacter> characters = circletStats.get(character.getCircletStatOne());
                if (!characters.contains(artifactBreakdownCharacter)) {
                    List<ArtifactBreakdownCharacter> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(artifactBreakdownCharacter);
                    circletStats.put(character.getCircletStatOne(), newCharacters);
                }
            }
        }

        if (character.getCircletStatTwo() != null) {
            if (!circletStats.containsKey(character.getCircletStatTwo())) {
                circletStats.put(character.getCircletStatTwo(), List.of(artifactBreakdownCharacter));
            } else {
                List<ArtifactBreakdownCharacter> characters = circletStats.get(character.getCircletStatTwo());
                if (!characters.contains(artifactBreakdownCharacter)) {
                    List<ArtifactBreakdownCharacter> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(artifactBreakdownCharacter);
                    circletStats.put(character.getCircletStatTwo(), newCharacters);
                }
            }
        }

        if (character.getCircletStatThree() != null) {
            if (!circletStats.containsKey(character.getCircletStatThree())) {
                circletStats.put(character.getCircletStatThree(), List.of(artifactBreakdownCharacter));
            } else {
                List<ArtifactBreakdownCharacter> characters = circletStats.get(character.getCircletStatThree());
                if (!characters.contains(artifactBreakdownCharacter)) {
                    List<ArtifactBreakdownCharacter> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(artifactBreakdownCharacter);
                    circletStats.put(character.getCircletStatThree(), newCharacters);
                }
            }
        }
    }

    private void processCircletStats(Map<CircletMainStats, List<ArtifactBreakdownCharacter>> circletStats) {
        if (circletStats.containsKey(CircletMainStats.CRITICAL_RATE_AND_DAMAGE)) {
            List<ArtifactBreakdownCharacter> characters = circletStats.get(CircletMainStats.CRITICAL_RATE_AND_DAMAGE);

            if (!circletStats.containsKey(CircletMainStats.CRITICAL_RATE)) {
                circletStats.put(CircletMainStats.CRITICAL_RATE, characters);
            } else {
                List<ArtifactBreakdownCharacter> charactersCritRate = circletStats.get(CircletMainStats.CRITICAL_RATE);
                for (ArtifactBreakdownCharacter character : characters) {
                    if (!charactersCritRate.contains(character)) {
                        List<ArtifactBreakdownCharacter> newCharacters = new ArrayList<>(charactersCritRate);
                        newCharacters.add(character);
                        circletStats.put(CircletMainStats.CRITICAL_RATE, newCharacters);
                    }
                }
            }

            if (!circletStats.containsKey(CircletMainStats.CRITICAL_DAMAGE)) {
                circletStats.put(CircletMainStats.CRITICAL_DAMAGE, characters);
            } else {
                List<ArtifactBreakdownCharacter> charactersCritDamage =
                        circletStats.get(CircletMainStats.CRITICAL_DAMAGE);
                for (ArtifactBreakdownCharacter character : characters) {
                    if (!charactersCritDamage.contains(character)) {
                        List<ArtifactBreakdownCharacter> newCharacters = new ArrayList<>(charactersCritDamage);
                        newCharacters.add(character);
                        circletStats.put(CircletMainStats.CRITICAL_DAMAGE, newCharacters);
                    }
                }
            }

            circletStats.remove(CircletMainStats.CRITICAL_RATE_AND_DAMAGE);
        }
    }

    private List<Substats> buildSubstats(Character character) {
        List<Substats> substats = new ArrayList<>();
        if (character.getSubstatOne() != null) {
            substats.add(character.getSubstatOne());
        }
        if (character.getSubstatTwo() != null) {
            substats.add(character.getSubstatTwo());
        }
        if (character.getSubstatThree() != null) {
            substats.add(character.getSubstatThree());
        }
        return substats;
    }
}
