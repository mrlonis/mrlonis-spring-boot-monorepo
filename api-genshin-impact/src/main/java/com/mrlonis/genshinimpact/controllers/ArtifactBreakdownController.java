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
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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

        Map<SandsMainStats, List<Character>> sandsStats = new HashMap<>();
        Map<GobletMainStats, List<Character>> gobletStats = new HashMap<>();
        Map<CircletMainStats, List<Character>> circletStats = new HashMap<>();
        Map<Substats, List<Character>> substats = new HashMap<>();

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
                                   Map<SandsMainStats, List<Character>> sandsStats,
                                   Map<GobletMainStats, List<Character>> gobletStats,
                                   Map<CircletMainStats, List<Character>> circletStats,
                                   Map<Substats, List<Character>> substats) {
        for (Character character : characters) {
            addSandsStats(character, sandsStats);
            addGobletStats(character, gobletStats);
            addCircletStats(character, circletStats);
            addSubstats(character, substats);
        }
    }

    private void addSandsStats(Character character, Map<SandsMainStats, List<Character>> sandsStats) {
        if (character.getSandsStatOne() != null) {
            if (!sandsStats.containsKey(character.getSandsStatOne())) {
                sandsStats.put(character.getSandsStatOne(), List.of(character));
            } else {
                List<Character> characters = sandsStats.get(character.getSandsStatOne());
                if (!characters.contains(character)) {
                    List<Character> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(character);
                    sandsStats.put(character.getSandsStatOne(), newCharacters);
                }
            }
        }

        if (character.getSandsStatTwo() != null) {
            if (!sandsStats.containsKey(character.getSandsStatTwo())) {
                sandsStats.put(character.getSandsStatTwo(), List.of(character));
            } else {
                List<Character> characters = sandsStats.get(character.getSandsStatTwo());
                log.info(characters.toString());
                if (!characters.contains(character)) {
                    List<Character> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(character);
                    sandsStats.put(character.getSandsStatTwo(), newCharacters);
                }
            }
        }

        if (character.getSandsStatThree() != null) {
            if (!sandsStats.containsKey(character.getSandsStatThree())) {
                sandsStats.put(character.getSandsStatThree(), List.of(character));
            } else {
                List<Character> characters = sandsStats.get(character.getSandsStatThree());
                if (!characters.contains(character)) {
                    List<Character> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(character);
                    sandsStats.put(character.getSandsStatThree(), newCharacters);
                }
            }
        }
    }

    private void addGobletStats(Character character, Map<GobletMainStats, List<Character>> gobletStats) {
        if (character.getGobletStatOne() != null) {
            if (!gobletStats.containsKey(character.getGobletStatOne())) {
                gobletStats.put(character.getGobletStatOne(), List.of(character));
            } else {
                List<Character> characters = gobletStats.get(character.getGobletStatOne());
                if (!characters.contains(character)) {
                    List<Character> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(character);
                    gobletStats.put(character.getGobletStatOne(), newCharacters);
                }
            }
        }

        if (character.getGobletStatTwo() != null) {
            if (!gobletStats.containsKey(character.getGobletStatTwo())) {
                gobletStats.put(character.getGobletStatTwo(), List.of(character));
            } else {
                List<Character> characters = gobletStats.get(character.getGobletStatTwo());
                if (!characters.contains(character)) {
                    List<Character> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(character);
                    gobletStats.put(character.getGobletStatTwo(), newCharacters);
                }
            }
        }

        if (character.getGobletStatThree() != null) {
            if (!gobletStats.containsKey(character.getGobletStatThree())) {
                gobletStats.put(character.getGobletStatThree(), List.of(character));
            } else {
                List<Character> characters = gobletStats.get(character.getGobletStatThree());
                if (!characters.contains(character)) {
                    List<Character> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(character);
                    gobletStats.put(character.getGobletStatThree(), newCharacters);
                }
            }
        }
    }

    private void addCircletStats(Character character, Map<CircletMainStats, List<Character>> circletStats) {
        if (character.getCircletStatOne() != null) {
            if (!circletStats.containsKey(character.getCircletStatOne())) {
                circletStats.put(character.getCircletStatOne(), List.of(character));
            } else {
                List<Character> characters = circletStats.get(character.getCircletStatOne());
                if (!characters.contains(character)) {
                    List<Character> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(character);
                    circletStats.put(character.getCircletStatOne(), newCharacters);
                }
            }
        }

        if (character.getCircletStatTwo() != null) {
            if (!circletStats.containsKey(character.getCircletStatTwo())) {
                circletStats.put(character.getCircletStatTwo(), List.of(character));
            } else {
                List<Character> characters = circletStats.get(character.getCircletStatTwo());
                if (!characters.contains(character)) {
                    List<Character> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(character);
                    circletStats.put(character.getCircletStatTwo(), newCharacters);
                }
            }
        }

        if (character.getCircletStatThree() != null) {
            if (!circletStats.containsKey(character.getCircletStatThree())) {
                circletStats.put(character.getCircletStatThree(), List.of(character));
            } else {
                List<Character> characters = circletStats.get(character.getCircletStatThree());
                if (!characters.contains(character)) {
                    List<Character> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(character);
                    circletStats.put(character.getCircletStatThree(), newCharacters);
                }
            }
        }
    }

    private void addSubstats(Character character, Map<Substats, List<Character>> substats) {
        if (character.getSubstatOne() != null) {
            if (!substats.containsKey(character.getSubstatOne())) {
                substats.put(character.getSubstatOne(), List.of(character));
            } else {
                List<Character> characters = substats.get(character.getSubstatOne());
                if (!characters.contains(character)) {
                    List<Character> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(character);
                    substats.put(character.getSubstatOne(), newCharacters);
                }
            }
        }

        if (character.getSubstatTwo() != null) {
            if (!substats.containsKey(character.getSubstatTwo())) {
                substats.put(character.getSubstatTwo(), List.of(character));
            } else {
                List<Character> characters = substats.get(character.getSubstatTwo());
                if (!characters.contains(character)) {
                    List<Character> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(character);
                    substats.put(character.getSubstatTwo(), newCharacters);
                }
            }
        }

        if (character.getSubstatThree() != null) {
            if (!substats.containsKey(character.getSubstatThree())) {
                substats.put(character.getSubstatThree(), List.of(character));
            } else {
                List<Character> characters = substats.get(character.getSubstatThree());
                if (!characters.contains(character)) {
                    List<Character> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(character);
                    substats.put(character.getSubstatThree(), newCharacters);
                }
            }
        }
    }

    private void processCircletStats(Map<CircletMainStats, List<Character>> circletStats) {
        if (circletStats.containsKey(CircletMainStats.CRITICAL_RATE_AND_DAMAGE)) {
            List<Character> characters = circletStats.get(CircletMainStats.CRITICAL_RATE_AND_DAMAGE);

            if (!circletStats.containsKey(CircletMainStats.CRITICAL_RATE)) {
                circletStats.put(CircletMainStats.CRITICAL_RATE, characters);
            } else {
                List<Character> charactersCritRate = circletStats.get(CircletMainStats.CRITICAL_RATE);
                for (Character character : characters) {
                    if (!charactersCritRate.contains(character)) {
                        List<Character> newCharacters = new ArrayList<>(charactersCritRate);
                        newCharacters.add(character);
                        circletStats.put(CircletMainStats.CRITICAL_RATE, newCharacters);
                    }
                }
            }

            if (!circletStats.containsKey(CircletMainStats.CRITICAL_DAMAGE)) {
                circletStats.put(CircletMainStats.CRITICAL_DAMAGE, characters);
            } else {
                List<Character> charactersCritDamage = circletStats.get(CircletMainStats.CRITICAL_DAMAGE);
                for (Character character : characters) {
                    if (!charactersCritDamage.contains(character)) {
                        List<Character> newCharacters = new ArrayList<>(charactersCritDamage);
                        newCharacters.add(character);
                        circletStats.put(CircletMainStats.CRITICAL_DAMAGE, newCharacters);
                    }
                }
            }

            circletStats.remove(CircletMainStats.CRITICAL_RATE_AND_DAMAGE);
        }
    }

    private void processSubstats(Map<Substats, List<Character>> substats) {
        if (substats.containsKey(Substats.CRITICAL_RATE_AND_DAMAGE)) {
            List<Character> characters = substats.get(Substats.CRITICAL_RATE_AND_DAMAGE);

            if (!substats.containsKey(Substats.CRITICAL_RATE)) {
                substats.put(Substats.CRITICAL_RATE, characters);
            } else {
                List<Character> charactersCritRate = substats.get(Substats.CRITICAL_RATE);
                for (Character character : characters) {
                    if (!charactersCritRate.contains(character)) {
                        List<Character> newCharacters = new ArrayList<>(charactersCritRate);
                        newCharacters.add(character);
                        substats.put(Substats.CRITICAL_RATE, newCharacters);
                    }
                }
            }

            if (!substats.containsKey(Substats.CRITICAL_DAMAGE)) {
                substats.put(Substats.CRITICAL_DAMAGE, characters);
            } else {
                List<Character> charactersCritDamage = substats.get(Substats.CRITICAL_DAMAGE);
                for (Character character : characters) {
                    if (!charactersCritDamage.contains(character)) {
                        List<Character> newCharacters = new ArrayList<>(charactersCritDamage);
                        newCharacters.add(character);
                        substats.put(Substats.CRITICAL_DAMAGE, newCharacters);
                    }
                }
            }

            substats.remove(Substats.CRITICAL_RATE_AND_DAMAGE);
        }
    }
}
