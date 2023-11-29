package com.mrlonis.honkaistarrail.controllers;

import com.mrlonis.honkaistarrail.dto.BreakdownCharacter;
import com.mrlonis.honkaistarrail.dto.OrnamentBreakdown;
import com.mrlonis.honkaistarrail.entities.Character;
import com.mrlonis.honkaistarrail.entities.Ornament;
import com.mrlonis.honkaistarrail.enums.LinkRopeMainStats;
import com.mrlonis.honkaistarrail.enums.PlanarSphereMainStats;
import com.mrlonis.honkaistarrail.enums.Substats;
import com.mrlonis.honkaistarrail.exceptions.NotFoundException;
import com.mrlonis.honkaistarrail.repositories.CharactersRepository;
import com.mrlonis.honkaistarrail.repositories.OrnamentsRepository;
import com.mrlonis.honkaistarrail.repositories.RelicsRepository;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

@RestController
@RequestMapping("/api/v2")
@AllArgsConstructor
@Slf4j
@CrossOrigin(origins = "http://localhost:3001")
public class BreakdownController {
    private CharactersRepository charactersRepository;
    private OrnamentsRepository ornamentsRepository;
    private RelicsRepository relicsRepository;

    @GetMapping("/ornamentBreakdown")
    OrnamentBreakdown getOrnamentBreakdownForOrnament(@RequestParam UUID ornamentId, @RequestParam int ornamentDepth)
            throws NotFoundException {
        log.info("Getting artifact breakdown for artifact: {}", ornamentId);
        Optional<Ornament> repositoryOrnament = ornamentsRepository.findById(ornamentId);
        if (repositoryOrnament.isEmpty()) {
            throw new NotFoundException("Artifact not found");
        }
        if (ornamentDepth < 1 || ornamentDepth > 3) {
            throw new IllegalArgumentException("Artifact depth must be between 1 and 3");
        }

        Ornament ornament = repositoryOrnament.get();
        OrnamentBreakdown ornamentBreakdown = OrnamentBreakdown.builder()
                                                               .id(ornament.getId())
                                                               .name(ornament.getName())
                                                               .imageUrl(ornament.getImageUrl())
                                                               .twoPieceSetEffect(ornament.getTwoPieceSetEffect())
                                                               .build();

        List<Character> characters = new ArrayList<>();
        if (ornamentDepth == 1) {
            characters = charactersRepository.findByOrnamentSetOneIdIs(ornament.getId());
        } else if (ornamentDepth == 2) {
            characters = charactersRepository.findByOrnamentSetOneIdIsOrOrnamentSetTwoIdIs(ornament.getId(),
                                                                                           ornament.getId());
        } else {
            characters = charactersRepository.findByOrnamentSetOneIdIsOrOrnamentSetTwoIdIsOrOrnamentSetThreeIdIs(
                    ornament.getId(),
                    ornament.getId(),
                    ornament.getId());
        }

        if (characters == null || characters.isEmpty()) {
            log.info("No Characters use ornament: {}", ornament.getName());
            return ornamentBreakdown;
        }

        List<BreakdownCharacter> breakdownCharacters = new ArrayList<>();
        Map<PlanarSphereMainStats, List<BreakdownCharacter>> planarSphereStats =
                new EnumMap<>(PlanarSphereMainStats.class);
        Map<LinkRopeMainStats, List<BreakdownCharacter>> linkRopeStats = new EnumMap<>(LinkRopeMainStats.class);

        processCharacters(characters, breakdownCharacters, planarSphereStats, linkRopeStats);

        ornamentBreakdown.setCharacters(breakdownCharacters);
        ornamentBreakdown.setPlanarSphereStats(planarSphereStats);
        ornamentBreakdown.setLinkRopeStats(linkRopeStats);

        return ornamentBreakdown;
    }

    private void processCharacters(List<Character> characters,
                                   List<BreakdownCharacter> breakdownCharacters,
                                   Map<PlanarSphereMainStats, List<BreakdownCharacter>> planarSphereStats,
                                   Map<LinkRopeMainStats, List<BreakdownCharacter>> linkRopeStats) {
        for (Character character : characters) {
            BreakdownCharacter breakdownCharacter = BreakdownCharacter.builder()
                                                                      .id(character.getId())
                                                                      .name(character.getName())
                                                                      .imageUrl(character.getImageUrl())
                                                                      .substats(buildSubstats(character))
                                                                      .build();
            breakdownCharacters.add(breakdownCharacter);
            addPlanarSphereStats(character, breakdownCharacter, planarSphereStats);
            addLinkRopeStats(character, breakdownCharacter, linkRopeStats);
        }
    }

    private void addPlanarSphereStats(Character character,
                                      BreakdownCharacter breakdownCharacter,
                                      Map<PlanarSphereMainStats, List<BreakdownCharacter>> planarSphereStats) {
        if (character.getPlanarSphereMainStat() != null) {
            if (!planarSphereStats.containsKey(character.getPlanarSphereMainStat())) {
                planarSphereStats.put(character.getPlanarSphereMainStat(), List.of(breakdownCharacter));
            } else {
                List<BreakdownCharacter> characters = planarSphereStats.get(character.getPlanarSphereMainStat());
                if (!characters.contains(breakdownCharacter)) {
                    List<BreakdownCharacter> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(breakdownCharacter);
                    planarSphereStats.put(character.getPlanarSphereMainStat(), newCharacters);
                }
            }
        }
    }

    private void addLinkRopeStats(Character character,
                                  BreakdownCharacter breakdownCharacter,
                                  Map<LinkRopeMainStats, List<BreakdownCharacter>> linkRopeStats) {
        if (character.getLinkRopeMainStatOne() != null) {
            if (!linkRopeStats.containsKey(character.getLinkRopeMainStatOne())) {
                linkRopeStats.put(character.getLinkRopeMainStatOne(), List.of(breakdownCharacter));
            } else {
                List<BreakdownCharacter> characters = linkRopeStats.get(character.getLinkRopeMainStatOne());
                if (!characters.contains(breakdownCharacter)) {
                    List<BreakdownCharacter> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(breakdownCharacter);
                    linkRopeStats.put(character.getLinkRopeMainStatOne(), newCharacters);
                }
            }
        }

        if (character.getLinkRopeMainStatTwo() != null) {
            if (!linkRopeStats.containsKey(character.getLinkRopeMainStatTwo())) {
                linkRopeStats.put(character.getLinkRopeMainStatTwo(), List.of(breakdownCharacter));
            } else {
                List<BreakdownCharacter> characters = linkRopeStats.get(character.getLinkRopeMainStatTwo());
                if (!characters.contains(breakdownCharacter)) {
                    List<BreakdownCharacter> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(breakdownCharacter);
                    linkRopeStats.put(character.getLinkRopeMainStatTwo(), newCharacters);
                }
            }
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
        if (character.getSubstatFour() != null) {
            substats.add(character.getSubstatFour());
        }
        return substats;
    }
}
