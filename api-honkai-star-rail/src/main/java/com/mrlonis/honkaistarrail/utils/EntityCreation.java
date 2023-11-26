package com.mrlonis.honkaistarrail.utils;

import com.mrlonis.honkaistarrail.entities.Character;
import com.mrlonis.honkaistarrail.entities.CombatPath;
import com.mrlonis.honkaistarrail.entities.CombatType;
import com.mrlonis.honkaistarrail.entities.LightCone;
import com.mrlonis.honkaistarrail.entities.Ornament;
import com.mrlonis.honkaistarrail.entities.Relic;
import com.mrlonis.honkaistarrail.enums.BodyMainStats;
import com.mrlonis.honkaistarrail.enums.FeetMainStats;
import com.mrlonis.honkaistarrail.enums.LinkRopeMainStats;
import com.mrlonis.honkaistarrail.enums.PlanarSphereMainStats;
import com.mrlonis.honkaistarrail.enums.Substats;
import com.mrlonis.honkaistarrail.exceptions.EntityCreationException;
import com.mrlonis.honkaistarrail.repositories.CharactersRepository;
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
    CharactersRepository charactersRepository;

    @EventListener(ContextRefreshedEvent.class)
    public void contextRefreshedEvent() {
        log.info("contextRefreshedEvent(): Starting...");
        createCombatTypeEntities(parseCsvFile("csv/combatTypes.csv"));
        createCombatPathEntities(parseCsvFile("csv/combatPaths.csv"));
        createLightConeEntities(parseCsvFile("csv/lightCones.csv"));
        createRelicEntities(parseCsvFile("csv/relics.csv"));
        createOrnamentEntities(parseCsvFile("csv/ornaments.csv"));
        createCharacterEntities(parseCsvFile("csv/characters.csv"));
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

        combatTypesRepository.saveAllAndFlush(combatTypes);
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

        combatPathsRepository.saveAllAndFlush(combatPaths);
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

        lightConesRepository.saveAllAndFlush(lightCones);
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

        relicsRepository.saveAllAndFlush(relics);
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
                Ornament ornament =
                        Ornament.builder().name(name).imageUrl(imageUrl).twoPieceSetEffect(twoPieceSetEffect).build();
                ornaments.add(ornament);
            }
        }

        ornamentsRepository.saveAllAndFlush(ornaments);
    }

    private void createCharacterEntities(List<String[]> csvFile) {
        List<Character> characters = new LinkedList<>();

        for (int i = 0; i < csvFile.size(); i++) {
            String[] row = csvFile.get(i);
            if (row.length != 30) {
                String errorMessage = String.format(
                        "createCharacterEntities(): Row %s size is not 30 and was instead %s! row: %s",
                        i,
                        row.length,
                        Arrays.toString(row));
                log.error(errorMessage);
                throw new EntityCreationException(errorMessage);
            }

            log.info(Arrays.toString(row));
            String name = row[0];
            String imageUrl = row[1];
            int rarity = Integer.parseInt(row[2]);
            String combatPathName = row[3];
            String combatTypeName = row[4];
            BodyMainStats bodyMainStatOne = BodyMainStats.convertToEnumFromCsvValue(row[5]);
            BodyMainStats bodyMainStatTwo = BodyMainStats.convertToEnumFromCsvValue(row[6]);
            FeetMainStats feetMainStatOne = FeetMainStats.convertToEnumFromCsvValue(row[7]);
            FeetMainStats feetMainStatTwo = FeetMainStats.convertToEnumFromCsvValue(row[8]);
            PlanarSphereMainStats planarSphereMainStat = PlanarSphereMainStats.convertToEnumFromCsvValue(row[9]);
            LinkRopeMainStats linkRopeMainStatOne = LinkRopeMainStats.convertToEnumFromCsvValue(row[10]);
            LinkRopeMainStats linkRopeMainStatTwo = LinkRopeMainStats.convertToEnumFromCsvValue(row[11]);
            Substats substatOne = Substats.convertToEnumFromCsvValue(row[12]);
            Substats substatTwo = Substats.convertToEnumFromCsvValue(row[13]);
            Substats substatThree = Substats.convertToEnumFromCsvValue(row[14]);
            Substats substatFour = Substats.convertToEnumFromCsvValue(row[15]);
            String relicSetOneNameFirst = row[16];
            String relicSetOneNameSecond = row[17];
            String relicSetTwoNameFirst = row[18];
            String relicSetTwoNameSecond = row[19];
            String relicSetThreeNameFirst = row[20];
            String relicSetThreeNameSecond = row[21];
            String ornamentSetOneName = row[22];
            String ornamentSetTwoName = row[23];
            String ornamentSetThreeName = row[24];
            String lightConeNameOne = row[25];
            String lightConeNameTwo = row[26];
            String lightConeNameThree = row[27];
            String lightConeNameFour = row[28];
            String lightConeNameFive = row[29];

            Optional<Character> existingCharacter = charactersRepository.findByNameIgnoreCaseIs(name);
            Character character;
            if (existingCharacter.isPresent()) {
                log.info("createCharacterEntities(): Character already exists: " + existingCharacter.get());
                log.info("createCharacterEntities(): Updating Character: " + existingCharacter.get());
                character = existingCharacter.get();
            } else {
                log.info("createCharacterEntities(): Character does not exist: " + name);
                character = Character.builder().name(name).build();
            }

            character.setImageUrl(imageUrl);
            character.setRarity(rarity);

            Optional<CombatPath> repositoryCombatPath = combatPathsRepository.findByNameIgnoreCaseIs(combatPathName);
            if (repositoryCombatPath.isEmpty()) {
                String errorMessage =
                        String.format("createCharacterEntities(): Combat Path does not exist: %s", combatPathName);
                log.error(errorMessage);
                throw new EntityCreationException(errorMessage);
            }
            CombatPath combatPath = repositoryCombatPath.get();
            character.setCombatPathId(combatPath.getId());
            character.setCombatPath(combatPath);

            Optional<CombatType> repositoryCombatType = combatTypesRepository.findByNameIgnoreCaseIs(combatTypeName);
            if (repositoryCombatType.isEmpty()) {
                String errorMessage =
                        String.format("createCharacterEntities(): Combat Type does not exist: %s", combatTypeName);
                log.error(errorMessage);
                throw new EntityCreationException(errorMessage);
            }
            CombatType combatType = repositoryCombatType.get();
            character.setCombatTypeId(combatType.getId());
            character.setCombatType(combatType);

            character.setBodyMainStatOne(bodyMainStatOne);
            character.setBodyMainStatTwo(bodyMainStatTwo);
            character.setFeetMainStatOne(feetMainStatOne);
            character.setFeetMainStatTwo(feetMainStatTwo);
            character.setPlanarSphereMainStat(planarSphereMainStat);
            character.setLinkRopeMainStatOne(linkRopeMainStatOne);
            character.setLinkRopeMainStatTwo(linkRopeMainStatTwo);
            character.setSubstatOne(substatOne);
            character.setSubstatTwo(substatTwo);
            character.setSubstatThree(substatThree);
            character.setSubstatFour(substatFour);

            Optional<Relic> repositoryRelicSetOneNameFirst =
                    relicsRepository.findByNameIgnoreCaseIs(relicSetOneNameFirst);
            if (repositoryRelicSetOneNameFirst.isEmpty()) {
                String errorMessage = String.format(
                        "createCharacterEntities(): Relic Set One Name First does not exist: %s",
                        relicSetOneNameFirst);
                log.error(errorMessage);
                throw new EntityCreationException(errorMessage);
            }
            Relic relicSetOneFirst = repositoryRelicSetOneNameFirst.get();
            character.setRelicSetOneIdFirst(relicSetOneFirst.getId());
            character.setRelicSetOneFirst(relicSetOneFirst);

            if (relicSetOneNameSecond != null) {
                Optional<Relic> repositoryRelicSetOneNameSecond =
                        relicsRepository.findByNameIgnoreCaseIs(relicSetOneNameSecond);
                if (repositoryRelicSetOneNameSecond.isEmpty()) {
                    String errorMessage = String.format(
                            "createCharacterEntities(): Relic Set One Name Second does not exist: %s",
                            relicSetOneNameSecond);
                    log.error(errorMessage);
                    throw new EntityCreationException(errorMessage);
                }
                Relic relicSetOneSecond = repositoryRelicSetOneNameSecond.get();
                character.setRelicSetOneIdSecond(relicSetOneSecond.getId());
                character.setRelicSetOneSecond(relicSetOneSecond);
            }

            if (relicSetTwoNameFirst != null) {
                Optional<Relic> repositoryRelicSetTwoNameFirst =
                        relicsRepository.findByNameIgnoreCaseIs(relicSetTwoNameFirst);
                if (repositoryRelicSetTwoNameFirst.isEmpty()) {
                    String errorMessage = String.format(
                            "createCharacterEntities(): Relic Set Two Name First does not exist: %s",
                            relicSetTwoNameFirst);
                    log.error(errorMessage);
                    throw new EntityCreationException(errorMessage);
                }
                Relic relicSetTwoFirst = repositoryRelicSetTwoNameFirst.get();
                character.setRelicSetTwoIdFirst(relicSetTwoFirst.getId());
                character.setRelicSetTwoFirst(relicSetTwoFirst);
            }

            if (relicSetTwoNameSecond != null) {
                Optional<Relic> repositoryRelicSetTwoNameSecond =
                        relicsRepository.findByNameIgnoreCaseIs(relicSetTwoNameSecond);
                if (repositoryRelicSetTwoNameSecond.isEmpty()) {
                    String errorMessage = String.format(
                            "createCharacterEntities(): Relic Set Two Name Second does not exist: %s",
                            relicSetTwoNameSecond);
                    log.error(errorMessage);
                    throw new EntityCreationException(errorMessage);
                }
                Relic relicSetTwoSecond = repositoryRelicSetTwoNameSecond.get();
                character.setRelicSetTwoIdSecond(relicSetTwoSecond.getId());
                character.setRelicSetTwoSecond(relicSetTwoSecond);
            }

            if (relicSetThreeNameFirst != null) {
                Optional<Relic> repositoryRelicSetThreeNameFirst =
                        relicsRepository.findByNameIgnoreCaseIs(relicSetThreeNameFirst);
                if (repositoryRelicSetThreeNameFirst.isEmpty()) {
                    String errorMessage = String.format(
                            "createCharacterEntities(): Relic Set Three Name First does not exist: %s",
                            relicSetThreeNameFirst);
                    log.error(errorMessage);
                    throw new EntityCreationException(errorMessage);
                }
                Relic relicSetThreeFirst = repositoryRelicSetThreeNameFirst.get();
                character.setRelicSetThreeIdFirst(relicSetThreeFirst.getId());
                character.setRelicSetThreeFirst(relicSetThreeFirst);
            }

            if (relicSetThreeNameSecond != null) {
                Optional<Relic> repositoryRelicSetThreeNameSecond =
                        relicsRepository.findByNameIgnoreCaseIs(relicSetThreeNameSecond);
                if (repositoryRelicSetThreeNameSecond.isEmpty()) {
                    String errorMessage = String.format(
                            "createCharacterEntities(): Relic Set Three Name Second does not exist: %s",
                            relicSetThreeNameSecond);
                    log.error(errorMessage);
                    throw new EntityCreationException(errorMessage);
                }
                Relic relicSetThreeSecond = repositoryRelicSetThreeNameSecond.get();
                character.setRelicSetThreeIdSecond(relicSetThreeSecond.getId());
                character.setRelicSetThreeSecond(relicSetThreeSecond);
            }

            if (ornamentSetOneName != null) {
                Optional<Ornament> repositoryOrnamentSetOne =
                        ornamentsRepository.findByNameIgnoreCaseIs(ornamentSetOneName);
                if (repositoryOrnamentSetOne.isEmpty()) {
                    String errorMessage =
                            String.format("createCharacterEntities(): Ornament Set One does not exist: %s",
                                          ornamentSetOneName);
                    log.error(errorMessage);
                    throw new EntityCreationException(errorMessage);
                }
                Ornament ornamentSetOne = repositoryOrnamentSetOne.get();
                character.setOrnamentSetOneId(ornamentSetOne.getId());
                character.setOrnamentSetOne(ornamentSetOne);
            }

            if (ornamentSetTwoName != null) {
                Optional<Ornament> repositoryOrnamentSetTwo =
                        ornamentsRepository.findByNameIgnoreCaseIs(ornamentSetTwoName);
                if (repositoryOrnamentSetTwo.isEmpty()) {
                    String errorMessage =
                            String.format("createCharacterEntities(): Ornament Set Two does not exist: %s",
                                          ornamentSetTwoName);
                    log.error(errorMessage);
                    throw new EntityCreationException(errorMessage);
                }
                Ornament ornamentSetTwo = repositoryOrnamentSetTwo.get();
                character.setOrnamentSetTwoId(ornamentSetTwo.getId());
                character.setOrnamentSetTwo(ornamentSetTwo);
            }

            if (ornamentSetThreeName != null) {
                Optional<Ornament> repositoryOrnamentSetThree =
                        ornamentsRepository.findByNameIgnoreCaseIs(ornamentSetThreeName);
                if (repositoryOrnamentSetThree.isEmpty()) {
                    String errorMessage = String.format(
                            "createCharacterEntities(): Ornament Set Three does not exist: %s",
                            ornamentSetThreeName);
                    log.error(errorMessage);
                    throw new EntityCreationException(errorMessage);
                }
                Ornament ornamentSetThree = repositoryOrnamentSetThree.get();
                character.setOrnamentSetThreeId(ornamentSetThree.getId());
                character.setOrnamentSetThree(ornamentSetThree);
            }

            if (lightConeNameOne != null) {
                Optional<LightCone> repositoryLightConeOne =
                        lightConesRepository.findByNameIgnoreCaseIs(lightConeNameOne);
                if (repositoryLightConeOne.isEmpty()) {
                    String errorMessage = String.format("createCharacterEntities(): Light Cone One does not exist: %s",
                                                        lightConeNameOne);
                    log.error(errorMessage);
                    throw new EntityCreationException(errorMessage);
                }
                LightCone lightConeOne = repositoryLightConeOne.get();
                character.setLightConeOneId(lightConeOne.getId());
                character.setLightConeOne(lightConeOne);
            }

            if (lightConeNameTwo != null) {
                Optional<LightCone> repositoryLightConeTwo =
                        lightConesRepository.findByNameIgnoreCaseIs(lightConeNameTwo);
                if (repositoryLightConeTwo.isEmpty()) {
                    String errorMessage = String.format("createCharacterEntities(): Light Cone Two does not exist: %s",
                                                        lightConeNameTwo);
                    log.error(errorMessage);
                    throw new EntityCreationException(errorMessage);
                }
                LightCone lightConeTwo = repositoryLightConeTwo.get();
                character.setLightConeTwoId(lightConeTwo.getId());
                character.setLightConeTwo(lightConeTwo);
            }

            if (lightConeNameThree != null) {
                Optional<LightCone> repositoryLightConeThree =
                        lightConesRepository.findByNameIgnoreCaseIs(lightConeNameThree);
                if (repositoryLightConeThree.isEmpty()) {
                    String errorMessage =
                            String.format("createCharacterEntities(): Light Cone Three does not exist: %s",
                                          lightConeNameThree);
                    log.error(errorMessage);
                    throw new EntityCreationException(errorMessage);
                }
                LightCone lightConeThree = repositoryLightConeThree.get();
                character.setLightConeThreeId(lightConeThree.getId());
                character.setLightConeThree(lightConeThree);
            }

            if (lightConeNameFour != null) {
                Optional<LightCone> repositoryLightConeFour =
                        lightConesRepository.findByNameIgnoreCaseIs(lightConeNameFour);
                if (repositoryLightConeFour.isEmpty()) {
                    String errorMessage = String.format("createCharacterEntities(): Light Cone Four does not exist: %s",
                                                        lightConeNameFour);
                    log.error(errorMessage);
                    throw new EntityCreationException(errorMessage);
                }
                LightCone lightConeFour = repositoryLightConeFour.get();
                character.setLightConeFourId(lightConeFour.getId());
                character.setLightConeFour(lightConeFour);
            }

            if (lightConeNameFive != null) {
                Optional<LightCone> repositoryLightConeFive =
                        lightConesRepository.findByNameIgnoreCaseIs(lightConeNameFive);
                if (repositoryLightConeFive.isEmpty()) {
                    String errorMessage = String.format("createCharacterEntities(): Light Cone Five does not exist: %s",
                                                        lightConeNameFive);
                    log.error(errorMessage);
                    throw new EntityCreationException(errorMessage);
                }
                LightCone lightConeFive = repositoryLightConeFive.get();
                character.setLightConeFiveId(lightConeFive.getId());
                character.setLightConeFive(lightConeFive);
            }

            characters.add(character);
        }

        charactersRepository.saveAllAndFlush(characters);
    }
}
