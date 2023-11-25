package com.mrlonis.honkaistarrail.utils;

import com.mrlonis.honkaistarrail.entities.CombatPath;
import com.mrlonis.honkaistarrail.entities.CombatType;
import com.mrlonis.honkaistarrail.entities.LightCone;
import com.mrlonis.honkaistarrail.entities.Ornament;
import com.mrlonis.honkaistarrail.entities.Relic;
import com.mrlonis.honkaistarrail.exceptions.EntityCreationException;
import com.mrlonis.honkaistarrail.repositories.CombatPathsRepository;
import com.mrlonis.honkaistarrail.repositories.CombatTypesRepository;
import com.mrlonis.honkaistarrail.repositories.LightConesRepository;
import com.mrlonis.honkaistarrail.repositories.OrnamentsRepository;
import com.mrlonis.honkaistarrail.repositories.RelicsRepository;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import com.opencsv.enums.CSVReaderNullFieldIndicator;
import com.opencsv.exceptions.CsvException;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

@Component
@Slf4j
@AllArgsConstructor
public class EntityCreation {
    CombatTypesRepository combatTypesRepository;
    CombatPathsRepository combatPathsRepository;
    LightConesRepository lightConesRepository;
    RelicsRepository relicsRepository;
    OrnamentsRepository ornamentsRepository;

    @EventListener(ContextRefreshedEvent.class)
    public void contextRefreshedEvent() {
        log.info("contextRefreshedEvent(): Starting...");
        createCombatTypeEntities(parseCsvFile("csv/combatTypes.csv"));
        createCombatPathEntities(parseCsvFile("csv/combatPaths.csv"));
        createLightConeEntities(parseCsvFile("csv/lightCones.csv"));
        createRelicEntities(parseCsvFile("csv/relics.csv"));
        createOrnamentEntities(parseCsvFile("csv/ornaments.csv"));
        log.info("contextRefreshedEvent(): Finished!");
    }

    private List<String[]> parseCsvFile(String filename) {
        ClassLoader classloader = Thread.currentThread().getContextClassLoader();
        try (InputStream inputStream = classloader.getResourceAsStream(filename)) {
            if (inputStream == null) {
                log.error("parseCsvFile(): Error: File not found!");
                throw new EntityCreationException("File not found!");
            }

            return readCsvFile(new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8)));
        } catch (IOException e) {
            String errorMessage = "parseCsvFile(): IOException: " + e.getMessage();
            log.error(errorMessage);
            throw new EntityCreationException(errorMessage, e);
        }
    }

    private List<String[]> readCsvFile(BufferedReader bufferedReader) {
        try (CSVReader csvReader = new CSVReaderBuilder(bufferedReader).withSkipLines(1)
                                                                       .withFieldAsNull(CSVReaderNullFieldIndicator.EMPTY_SEPARATORS)
                                                                       .build()) {
            return csvReader.readAll();
        } catch (CsvException e) {
            String errorMessage = "readCsvFile(): CsvException: " + e.getMessage();
            log.error(errorMessage);
            throw new EntityCreationException(errorMessage, e);
        } catch (IOException e) {
            String errorMessage = "readCsvFile(): IOException: " + e.getMessage();
            log.error(errorMessage);
            throw new EntityCreationException(errorMessage, e);
        }
    }

    private void createCombatTypeEntities(List<String[]> csvFile) {
        List<CombatType> combatTypes = new LinkedList<>();

        for (int i = 0; i < csvFile.size(); i++) {
            String[] row = csvFile.get(i);
            if (row.length != 3) {
                String errorMessage = String.format(
                        "createCombatTypesEntities(): Row %s size is not 3 and was instead %s! row: %s",
                        i,
                        row.length,
                        Arrays.toString(row));
                log.error(errorMessage);
                throw new EntityCreationException(errorMessage);
            }

            String name = row[0];
            String imageUrl = row[1];
            String description = row[2];

            Optional<CombatType> existingCombatType = combatTypesRepository.findByNameIgnoreCaseIs(name);
            if (existingCombatType.isPresent()) {
                CombatType combatType = existingCombatType.get();
                log.info("createCombatTypesEntities(): Combat Type already exists: " + combatType);
                log.info("createCombatTypesEntities(): Updating Combat Type: " + combatType);

                combatType.setImageUrl(imageUrl);
                combatType.setDescription(description);

                combatTypes.add(combatType);
            } else {
                log.info("createCombatTypesEntities(): Combat Type does not exist: " + name);
                CombatType combatType =
                        CombatType.builder().name(name).imageUrl(imageUrl).description(description).build();
                combatTypes.add(combatType);
            }
        }

        combatTypesRepository.saveAll(combatTypes);
    }

    private void createCombatPathEntities(List<String[]> csvFile) {
        List<CombatPath> combatPaths = new LinkedList<>();

        for (int i = 0; i < csvFile.size(); i++) {
            String[] row = csvFile.get(i);
            if (row.length != 3) {
                String errorMessage = String.format(
                        "createCombatPathsEntities(): Row %s size is not 3 and was instead %s! row: %s",
                        i,
                        row.length,
                        Arrays.toString(row));
                log.error(errorMessage);
                throw new EntityCreationException(errorMessage);
            }

            String name = row[0];
            String imageUrl = row[1];
            String description = row[2];

            Optional<CombatPath> existingCombatPath = combatPathsRepository.findByNameIgnoreCaseIs(name);
            if (existingCombatPath.isPresent()) {
                CombatPath combatPath = existingCombatPath.get();
                log.info("createCombatPathsEntities(): Combat Path already exists: " + combatPath);
                log.info("createCombatPathsEntities(): Updating Combat Path: " + combatPath);

                combatPath.setImageUrl(imageUrl);
                combatPath.setDescription(description);

                combatPaths.add(combatPath);
            } else {
                log.info("createCombatPathsEntities(): Combat Path does not exist: " + name);
                CombatPath combatPath =
                        CombatPath.builder().name(name).imageUrl(imageUrl).description(description).build();
                combatPaths.add(combatPath);
            }
        }

        combatPathsRepository.saveAll(combatPaths);
    }

    private void createLightConeEntities(List<String[]> csvFile) {
        List<LightCone> lightCones = new LinkedList<>();

        for (int i = 0; i < csvFile.size(); i++) {
            String[] row = csvFile.get(i);
            if (row.length != 5) {
                String errorMessage = String.format(
                        "createLightConesEntities(): Row %s size is not 5 and was instead %s! row: %s",
                        i,
                        row.length,
                        Arrays.toString(row));
                log.error(errorMessage);
                throw new EntityCreationException(errorMessage);
            }

            String name = row[0];
            String imageUrl = row[1];
            int rarity = Integer.parseInt(row[2]);
            String combatPathName = row[3];
            String skill = row[4];

            Optional<CombatPath> repositoryCombatPath = combatPathsRepository.findByNameIgnoreCaseIs(combatPathName);
            if (repositoryCombatPath.isEmpty()) {
                String errorMessage =
                        String.format("createLightConesEntities(): Combat Path does not exist: %s", combatPathName);
                log.error(errorMessage);
                throw new EntityCreationException(errorMessage);
            }
            CombatPath combatPath = repositoryCombatPath.get();

            Optional<LightCone> existingLightCone = lightConesRepository.findByNameIgnoreCaseIs(name);
            if (existingLightCone.isPresent()) {
                LightCone lightCone = existingLightCone.get();
                log.info("createLightConesEntities(): Light Cone already exists: " + lightCone);
                log.info("createLightConesEntities(): Updating Light Cone: " + lightCone);

                lightCone.setImageUrl(imageUrl);
                lightCone.setRarity(rarity);
                lightCone.setCombatPathId(combatPath.getId());
                lightCone.setCombatPath(combatPath);
                lightCone.setSkill(skill);

                lightCones.add(lightCone);
            } else {
                log.info("createLightConesEntities(): Light Cone does not exist: " + name);
                LightCone lightCone = LightCone.builder()
                                               .name(name)
                                               .imageUrl(imageUrl)
                                               .rarity(rarity)
                                               .combatPathId(combatPath.getId())
                                               .combatPath(combatPath)
                                               .skill(skill)
                                               .build();
                lightCones.add(lightCone);
            }
        }

        lightConesRepository.saveAll(lightCones);
    }

    private void createRelicEntities(List<String[]> csvFile) {
        List<Relic> relics = new LinkedList<>();

        for (int i = 0; i < csvFile.size(); i++) {
            String[] row = csvFile.get(i);
            if (row.length != 4) {
                String errorMessage = String.format(
                        "createRelicsEntities(): Row %s size is not 4 and was instead %s! row: %s",
                        i,
                        row.length,
                        Arrays.toString(row));
                log.error(errorMessage);
                throw new EntityCreationException(errorMessage);
            }

            String name = row[0];
            String imageUrl = row[1];
            String twoPieceSetEffect = row[2];
            String fourPieceSetEffect = row[3];

            Optional<Relic> existingRelic = relicsRepository.findByNameIgnoreCaseIs(name);
            if (existingRelic.isPresent()) {
                Relic relic = existingRelic.get();
                log.info("createRelicsEntities(): Relic already exists: " + relic);
                log.info("createRelicsEntities(): Updating Relic: " + relic);

                relic.setImageUrl(imageUrl);
                relic.setTwoPieceSetEffect(twoPieceSetEffect);
                relic.setFourPieceSetEffect(fourPieceSetEffect);

                relics.add(relic);
            } else {
                log.info("createRelicsEntities(): Relic does not exist: " + name);
                Relic relic = Relic.builder()
                                   .name(name)
                                   .imageUrl(imageUrl)
                                   .twoPieceSetEffect(twoPieceSetEffect)
                                   .fourPieceSetEffect(fourPieceSetEffect)
                                   .build();
                relics.add(relic);
            }
        }

        relicsRepository.saveAll(relics);
    }

    private void createOrnamentEntities(List<String[]> csvFile) {
        List<Ornament> ornaments = new LinkedList<>();

        for (int i = 0; i < csvFile.size(); i++) {
            String[] row = csvFile.get(i);
            if (row.length != 3) {
                String errorMessage = String.format(
                        "createOrnamentsEntities(): Row %s size is not 3 and was instead %s! row: %s",
                        i,
                        row.length,
                        Arrays.toString(row));
                log.error(errorMessage);
                throw new EntityCreationException(errorMessage);
            }

            String name = row[0];
            String imageUrl = row[1];
            String twoPieceSetEffect = row[2];

            Optional<Ornament> existingOrnament = ornamentsRepository.findByNameIgnoreCaseIs(name);
            if (existingOrnament.isPresent()) {
                Ornament ornament = existingOrnament.get();
                log.info("createOrnamentsEntities(): Ornament already exists: " + ornament);
                log.info("createOrnamentsEntities(): Updating Ornament: " + ornament);

                ornament.setImageUrl(imageUrl);
                ornament.setTwoPieceSetEffect(twoPieceSetEffect);

                ornaments.add(ornament);
            } else {
                log.info("createOrnamentsEntities(): Ornament does not exist: " + name);
                Ornament ornament = Ornament.builder()
                                            .name(name)
                                            .imageUrl(imageUrl)
                                            .twoPieceSetEffect(twoPieceSetEffect)
                                            .build();
                ornaments.add(ornament);
            }
        }

        ornamentsRepository.saveAll(ornaments);
    }
}
