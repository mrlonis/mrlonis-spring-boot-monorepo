package com.mrlonis.honkaistarrail.services;

import com.mrlonis.honkaistarrail.dto.BreakdownCharacter;
import com.mrlonis.honkaistarrail.dto.RelicBreakdown;
import com.mrlonis.honkaistarrail.entities.Character;
import com.mrlonis.honkaistarrail.entities.Relic;
import com.mrlonis.honkaistarrail.enums.BodyMainStats;
import com.mrlonis.honkaistarrail.enums.FeetMainStats;
import com.mrlonis.honkaistarrail.exceptions.NotFoundException;
import com.mrlonis.honkaistarrail.repositories.CharactersRepository;
import com.mrlonis.honkaistarrail.repositories.RelicsRepository;
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
public class RelicBreakdownService extends BaseBreakdownService<RelicBreakdown> {
    private CharactersRepository charactersRepository;
    private RelicsRepository relicsRepository;

    public RelicBreakdown getBreakdown(@RequestParam UUID id, @RequestParam int depth) throws NotFoundException {
        log.info("Getting relic breakdown for relic: {}", id);
        Optional<Relic> repositoryRelic = relicsRepository.findById(id);
        if (repositoryRelic.isEmpty()) {
            throw new NotFoundException("Relic not found");
        }
        if (depth < 1 || depth > 3) {
            throw new IllegalArgumentException("Relic depth must be between 1 and 5");
        }

        Relic relic = repositoryRelic.get();
        RelicBreakdown relicBreakdown = RelicBreakdown.builder()
                                                      .id(relic.getId())
                                                      .name(relic.getName())
                                                      .imageUrl(relic.getImageUrl())
                                                      .twoPieceSetEffect(relic.getTwoPieceSetEffect())
                                                      .fourPieceSetEffect(relic.getFourPieceSetEffect())
                                                      .build();

        List<Character> characters;
        if (depth == 1) {
            characters = charactersRepository.findByRelicSetOneIdFirstIsOrRelicSetOneIdSecondIs(relic.getId(),
                                                                                                relic.getId());
        } else if (depth == 2) {
            characters =
                    charactersRepository.findByRelicSetOneIdFirstIsOrRelicSetOneIdSecondIsOrRelicSetTwoIdFirstIsOrRelicSetTwoIdSecondIs(
                            relic.getId(),
                            relic.getId(),
                            relic.getId(),
                            relic.getId());
        } else {
            characters =
                    charactersRepository.findByRelicSetOneIdFirstIsOrRelicSetOneIdSecondIsOrRelicSetTwoIdFirstIsOrRelicSetTwoIdSecondIsOrRelicSetThreeIdFirstIsOrRelicSetThreeIdSecondIs(
                            relic.getId(),
                            relic.getId(),
                            relic.getId(),
                            relic.getId(),
                            relic.getId(),
                            relic.getId());
        }

        if (characters == null || characters.isEmpty()) {
            log.info("No Characters use relic: {}", relic.getName());
            return relicBreakdown;
        }

        List<BreakdownCharacter> breakdownCharacters = new ArrayList<>();
        Map<BodyMainStats, List<BreakdownCharacter>> bodyStats = new EnumMap<>(BodyMainStats.class);
        Map<FeetMainStats, List<BreakdownCharacter>> feetStats = new EnumMap<>(FeetMainStats.class);

        processRelicCharacters(characters, breakdownCharacters, bodyStats, feetStats);
        processBodyStats(bodyStats);

        relicBreakdown.setCharacters(breakdownCharacters);
        relicBreakdown.setBodyStats(bodyStats);
        relicBreakdown.setFeetStats(feetStats);

        return relicBreakdown;
    }

    private void processRelicCharacters(List<Character> characters,
                                        List<BreakdownCharacter> breakdownCharacters,
                                        Map<BodyMainStats, List<BreakdownCharacter>> bodyStats,
                                        Map<FeetMainStats, List<BreakdownCharacter>> feetStats) {
        for (Character character : characters) {
            BreakdownCharacter breakdownCharacter = BreakdownCharacter.builder()
                                                                      .id(character.getId())
                                                                      .name(character.getName())
                                                                      .imageUrl(character.getImageUrl())
                                                                      .substats(buildSubstats(character))
                                                                      .build();
            breakdownCharacters.add(breakdownCharacter);
            addBodyStats(character, breakdownCharacter, bodyStats);
            addFeetStats(character, breakdownCharacter, feetStats);
        }
    }

    private void addBodyStats(Character character,
                              BreakdownCharacter breakdownCharacter,
                              Map<BodyMainStats, List<BreakdownCharacter>> bodyStats) {
        if (character.getBodyMainStatOne() != null) {
            if (!bodyStats.containsKey(character.getBodyMainStatOne())) {
                bodyStats.put(character.getBodyMainStatOne(), List.of(breakdownCharacter));
            } else {
                List<BreakdownCharacter> characters = bodyStats.get(character.getBodyMainStatOne());
                if (!characters.contains(breakdownCharacter)) {
                    List<BreakdownCharacter> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(breakdownCharacter);
                    bodyStats.put(character.getBodyMainStatOne(), newCharacters);
                }
            }
        }

        if (character.getBodyMainStatTwo() != null) {
            if (!bodyStats.containsKey(character.getBodyMainStatTwo())) {
                bodyStats.put(character.getBodyMainStatTwo(), List.of(breakdownCharacter));
            } else {
                List<BreakdownCharacter> characters = bodyStats.get(character.getBodyMainStatTwo());
                if (!characters.contains(breakdownCharacter)) {
                    List<BreakdownCharacter> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(breakdownCharacter);
                    bodyStats.put(character.getBodyMainStatTwo(), newCharacters);
                }
            }
        }
    }

    private void addFeetStats(Character character,
                              BreakdownCharacter breakdownCharacter,
                              Map<FeetMainStats, List<BreakdownCharacter>> feetStats) {
        if (character.getFeetMainStatOne() != null) {
            if (!feetStats.containsKey(character.getFeetMainStatOne())) {
                feetStats.put(character.getFeetMainStatOne(), List.of(breakdownCharacter));
            } else {
                List<BreakdownCharacter> characters = feetStats.get(character.getFeetMainStatOne());
                if (!characters.contains(breakdownCharacter)) {
                    List<BreakdownCharacter> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(breakdownCharacter);
                    feetStats.put(character.getFeetMainStatOne(), newCharacters);
                }
            }
        }

        if (character.getFeetMainStatTwo() != null) {
            if (!feetStats.containsKey(character.getFeetMainStatTwo())) {
                feetStats.put(character.getFeetMainStatTwo(), List.of(breakdownCharacter));
            } else {
                List<BreakdownCharacter> characters = feetStats.get(character.getFeetMainStatTwo());
                if (!characters.contains(breakdownCharacter)) {
                    List<BreakdownCharacter> newCharacters = new ArrayList<>(characters);
                    newCharacters.add(breakdownCharacter);
                    feetStats.put(character.getFeetMainStatTwo(), newCharacters);
                }
            }
        }
    }

    private void processBodyStats(Map<BodyMainStats, List<BreakdownCharacter>> bodyStats) {
        if (bodyStats.containsKey(BodyMainStats.CRITICAL_RATE_AND_DAMAGE)) {
            List<BreakdownCharacter> characters = bodyStats.get(BodyMainStats.CRITICAL_RATE_AND_DAMAGE);

            if (!bodyStats.containsKey(BodyMainStats.CRITICAL_RATE)) {
                bodyStats.put(BodyMainStats.CRITICAL_RATE, characters);
            } else {
                List<BreakdownCharacter> charactersCritRate = bodyStats.get(BodyMainStats.CRITICAL_RATE);
                for (BreakdownCharacter character : characters) {
                    if (!charactersCritRate.contains(character)) {
                        List<BreakdownCharacter> newCharacters = new ArrayList<>(charactersCritRate);
                        newCharacters.add(character);
                        bodyStats.put(BodyMainStats.CRITICAL_RATE, newCharacters);
                    }
                }
            }

            if (!bodyStats.containsKey(BodyMainStats.CRITICAL_DAMAGE)) {
                bodyStats.put(BodyMainStats.CRITICAL_DAMAGE, characters);
            } else {
                List<BreakdownCharacter> charactersCritDamage = bodyStats.get(BodyMainStats.CRITICAL_DAMAGE);
                for (BreakdownCharacter character : characters) {
                    if (!charactersCritDamage.contains(character)) {
                        List<BreakdownCharacter> newCharacters = new ArrayList<>(charactersCritDamage);
                        newCharacters.add(character);
                        bodyStats.put(BodyMainStats.CRITICAL_DAMAGE, newCharacters);
                    }
                }
            }

            bodyStats.remove(BodyMainStats.CRITICAL_RATE_AND_DAMAGE);
        }
    }

}
