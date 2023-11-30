package com.mrlonis.honkaistarrail.services;

import com.mrlonis.honkaistarrail.dto.BreakdownCharacter;
import com.mrlonis.honkaistarrail.dto.OrnamentBreakdown;
import com.mrlonis.honkaistarrail.entities.Character;
import com.mrlonis.honkaistarrail.entities.Ornament;
import com.mrlonis.honkaistarrail.enums.LinkRopeMainStats;
import com.mrlonis.honkaistarrail.enums.PlanarSphereMainStats;
import com.mrlonis.honkaistarrail.exceptions.NotFoundException;
import com.mrlonis.honkaistarrail.repositories.CharactersRepository;
import com.mrlonis.honkaistarrail.repositories.OrnamentsRepository;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

@Service
@AllArgsConstructor
@Slf4j
public class OrnamentBreakdownService extends BaseBreakdownService<OrnamentBreakdown> {
    private CharactersRepository charactersRepository;
    private OrnamentsRepository ornamentsRepository;

    public OrnamentBreakdown getBreakdown(@RequestParam UUID id, @RequestParam int depth) throws NotFoundException {
        log.info("Getting ornament breakdown for ornament: {}", id);
        Optional<Ornament> repositoryOrnament = ornamentsRepository.findById(id);
        if (repositoryOrnament.isEmpty()) {
            throw new NotFoundException("Ornament not found");
        }
        if (depth < 1 || depth > 3) {
            throw new IllegalArgumentException("Ornament depth must be between 1 and 3");
        }

        Ornament ornament = repositoryOrnament.get();
        OrnamentBreakdown ornamentBreakdown = OrnamentBreakdown.builder()
                                                               .id(ornament.getId())
                                                               .name(ornament.getName())
                                                               .imageUrl(ornament.getImageUrl())
                                                               .twoPieceSetEffect(ornament.getTwoPieceSetEffect())
                                                               .build();

        List<Character> characters;
        if (depth == 1) {
            characters = charactersRepository.findByOrnamentSetOneIdIs(ornament.getId());
        } else if (depth == 2) {
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

        processOrnamentCharacters(characters, breakdownCharacters, planarSphereStats, linkRopeStats);

        ornamentBreakdown.setCharacters(breakdownCharacters);
        ornamentBreakdown.setPlanarSphereStats(planarSphereStats);
        ornamentBreakdown.setLinkRopeStats(linkRopeStats);

        return ornamentBreakdown;
    }

    private void processOrnamentCharacters(List<Character> characters,
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

}
