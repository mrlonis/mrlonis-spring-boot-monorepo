package com.mrlonis.genshinimpact.utils;

import com.mrlonis.genshinimpact.entities.Artifact;
import com.mrlonis.genshinimpact.entities.Character;
import com.mrlonis.genshinimpact.entities.Element;
import com.mrlonis.genshinimpact.entities.Weapon;
import com.mrlonis.genshinimpact.enums.CircletMainStats;
import com.mrlonis.genshinimpact.enums.GobletMainStats;
import com.mrlonis.genshinimpact.enums.SandsMainStats;
import com.mrlonis.genshinimpact.enums.Substats;
import com.mrlonis.genshinimpact.enums.WeaponSecondaryStats;
import com.mrlonis.genshinimpact.enums.WeaponTypes;
import com.mrlonis.genshinimpact.exceptions.EntityCreationException;
import com.mrlonis.genshinimpact.repositories.ArtifactsRepository;
import com.mrlonis.genshinimpact.repositories.CharactersRepository;
import com.mrlonis.genshinimpact.repositories.ElementsRepository;
import com.mrlonis.genshinimpact.repositories.WeaponsRepository;
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
    ElementsRepository elementsRepository;
    WeaponsRepository weaponsRepository;
    ArtifactsRepository artifactsRepository;
    CharactersRepository charactersRepository;

    @EventListener(ContextRefreshedEvent.class)
    public void contextRefreshedEvent() {
        log.info("contextRefreshedEvent(): Starting...");
        createElementEntities(parseCsvFile("csv/elements.csv"));
        createWeaponEntities(parseCsvFile("csv/weapons.csv"));
        createArtifactEntities(parseCsvFile("csv/artifacts.csv"));
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

    private void createElementEntities(List<String[]> csvFile) {
        List<Element> elements = new LinkedList<>();

        for (int i = 0; i < csvFile.size(); i++) {
            String[] row = csvFile.get(i);
            if (row.length != 2) {
                String errorMessage = String.format(
                        "createElementEntities(): Row %s size is not 2 and was instead %s! row: %s",
                        i,
                        row.length,
                        Arrays.toString(row));
                log.error(errorMessage);
                throw new EntityCreationException(errorMessage);
            }
            String name = row[0];
            String imageUrl = row[1];

            Optional<Element> existingElement = elementsRepository.findByNameIgnoreCaseIs(name);
            if (existingElement.isPresent()) {
                Element element = existingElement.get();
                log.info("createElementEntities(): Element already exists: " + element);
                log.info("createElementEntities(): Updating element: " + element);

                element.setImageUrl(imageUrl);

                elements.add(element);
            } else {
                log.info("createElementEntities(): Element does not exist: " + name);
                Element element = Element.builder()
                                         .name(name)
                                         .imageUrl(imageUrl)
                                         .build();
                elements.add(element);
            }
        }

        elementsRepository.saveAllAndFlush(elements);
    }

    private void createWeaponEntities(List<String[]> csvFile) {
        List<Weapon> weapons = new LinkedList<>();

        for (int i = 0; i < csvFile.size(); i++) {
            String[] row = csvFile.get(i);
            if (row.length != 8) {
                String errorMessage = String.format(
                        "createWeaponEntities(): Row %s size is not 8 and was instead %s! row: %s",
                        i,
                        row.length,
                        Arrays.toString(row));
                log.error(errorMessage);
                throw new EntityCreationException(errorMessage);
            }
            String name = row[0];
            String imageUrl = row[1];
            int rarity = Integer.parseInt(row[2]);
            WeaponTypes weaponType = WeaponTypes.convertToEnumFromCsvValue(row[3]);
            WeaponSecondaryStats secondaryStat = WeaponSecondaryStats.convertToEnumFromCsvValue(row[4]);
            String weaponAffix = row[5];
            String affixDescription = row[6];
            String description = row[7];

            log.info("createWeaponEntities(): Creating weapon: " + name);
            Optional<Weapon> existingWeapon = weaponsRepository.findByNameIgnoreCaseIs(name);
            if (existingWeapon.isPresent()) {
                Weapon weapon = existingWeapon.get();
                log.info("createWeaponEntities(): Weapon already exists: " + weapon);
                log.info("createWeaponEntities(): Updating weapon: " + weapon);

                weapon.setImageUrl(imageUrl);
                weapon.setRarity(rarity);
                weapon.setWeaponType(weaponType);
                weapon.setSecondaryStat(secondaryStat);
                weapon.setWeaponAffix(weaponAffix);
                weapon.setAffixDescription(affixDescription);
                weapon.setDescription(description);

                weapons.add(weapon);
            } else {
                log.info("createWeaponEntities(): Weapon does not exist: " + name);
                Weapon weapon = Weapon.builder()
                                      .name(name)
                                      .imageUrl(imageUrl)
                                      .rarity(rarity)
                                      .weaponType(weaponType)
                                      .secondaryStat(secondaryStat)
                                      .weaponAffix(weaponAffix)
                                      .affixDescription(affixDescription)
                                      .description(description)
                                      .build();
                weapons.add(weapon);
            }
        }

        weaponsRepository.saveAllAndFlush(weapons);
    }

    private void createArtifactEntities(List<String[]> csvFile) {
        List<Artifact> artifacts = new LinkedList<>();

        for (int i = 0; i < csvFile.size(); i++) {
            String[] row = csvFile.get(i);
            if (row.length != 5) {
                String errorMessage = String.format(
                        "createArtifactEntities(): Row %s size is not 5 and was instead %s! row: %s",
                        i,
                        row.length,
                        Arrays.toString(row));
                log.error(errorMessage);
                throw new EntityCreationException(errorMessage);
            }

            String name = row[0];
            String imageUrl = row[1];
            String onePieceSetEffect = row[2];
            String twoPieceSetEffect = row[3];
            String fourPieceSetEffect = row[4];

            Optional<Artifact> existingArtifact = artifactsRepository.findByNameIgnoreCaseIs(name);
            if (existingArtifact.isPresent()) {
                Artifact artifact = existingArtifact.get();
                log.info("createArtifactEntities(): Artifact already exists: " + artifact);
                log.info("createArtifactEntities(): Updating artifact: " + artifact);

                artifact.setImageUrl(imageUrl);
                artifact.setOnePieceSetEffect(onePieceSetEffect);
                artifact.setTwoPieceSetEffect(twoPieceSetEffect);
                artifact.setFourPieceSetEffect(fourPieceSetEffect);

                artifacts.add(artifact);
            } else {
                log.info("createArtifactEntities(): Artifact does not exist: " + name);
                Artifact artifact = Artifact.builder()
                                            .name(name)
                                            .imageUrl(imageUrl)
                                            .onePieceSetEffect(onePieceSetEffect)
                                            .twoPieceSetEffect(twoPieceSetEffect)
                                            .fourPieceSetEffect(fourPieceSetEffect)
                                            .build();
                artifacts.add(artifact);
            }
        }

        artifactsRepository.saveAllAndFlush(artifacts);
    }

    private void createCharacterEntities(List<String[]> csvFile) {
        List<Character> characters = new LinkedList<>();

        for (int i = 0; i < csvFile.size(); i++) {
            String[] row = csvFile.get(i);
            if (row.length != 32) {
                String errorMessage = String.format(
                        "createCharacterEntities(): Row %s size is not 32 and was instead %s! row: %s",
                        i,
                        row.length,
                        Arrays.toString(row));
                log.error(errorMessage);
                throw new EntityCreationException(errorMessage);
            }

            String name = row[0];
            String imageUrl = row[1];
            int rarity = Integer.parseInt(row[2]);
            String elementName = row[3];
            WeaponTypes weaponType = WeaponTypes.convertToEnumFromCsvValue(row[4]);
            SandsMainStats sandsStatOne = SandsMainStats.convertToEnumFromCsvValue(row[5]);
            SandsMainStats sandsStatTwo = SandsMainStats.convertToEnumFromCsvValue(row[6]);
            SandsMainStats sandsStatThree = SandsMainStats.convertToEnumFromCsvValue(row[7]);
            GobletMainStats gobletStatOne = GobletMainStats.convertToEnumFromCsvValue(row[8]);
            GobletMainStats gobletStatTwo = GobletMainStats.convertToEnumFromCsvValue(row[9]);
            GobletMainStats gobletStatThree = GobletMainStats.convertToEnumFromCsvValue(row[10]);
            CircletMainStats circletStatOne = CircletMainStats.convertToEnumFromCsvValue(row[11]);
            CircletMainStats circletStatTwo = CircletMainStats.convertToEnumFromCsvValue(row[12]);
            CircletMainStats circletStatThree = CircletMainStats.convertToEnumFromCsvValue(row[13]);
            Substats substatOne = Substats.convertToEnumFromCsvValue(row[14]);
            Substats substatTwo = Substats.convertToEnumFromCsvValue(row[15]);
            Substats substatThree = Substats.convertToEnumFromCsvValue(row[16]);
            String weaponOneName = row[17];
            String weaponTwoName = row[18];
            String weaponThreeName = row[19];
            String weaponFourName = row[20];
            String weaponFiveName = row[21];
            String artifactSetOneNameFirst = row[22];
            String artifactSetOneNameSecond = row[23];
            String artifactSetTwoNameFirst = row[24];
            String artifactSetTwoNameSecond = row[25];
            String artifactSetThreeNameFirst = row[26];
            String artifactSetThreeNameSecond = row[27];
            String artifactSetFourNameFirst = row[28];
            String artifactSetFourNameSecond = row[29];
            String artifactSetFiveNameFirst = row[30];
            String artifactSetFiveNameSecond = row[31];

            log.info("createCharacterEntities(): Creating character: " + name);
            Character existingCharacter = charactersRepository.findByNameIgnoreCaseIs(name);
            if (existingCharacter != null) {
                log.info("createCharacterEntities(): Character already exists: " + existingCharacter);
                log.info("createCharacterEntities(): Updating character: " + existingCharacter);

                existingCharacter.setImageUrl(imageUrl);
                existingCharacter.setRarity(rarity);
                Optional<Element> repositoryElement = elementsRepository.findByNameIgnoreCaseIs(elementName);
                if (repositoryElement.isEmpty()) {
                    log.error("createCharacterEntities(): Element does not exist: " + elementName);
                    throw new EntityCreationException("Element does not exist: " + elementName);
                }
                Element element = repositoryElement.get();
                existingCharacter.setElementId(element.getId());
                existingCharacter.setElement(element);
                existingCharacter.setWeaponType(weaponType);
                existingCharacter.setSandsStatOne(sandsStatOne);
                existingCharacter.setSandsStatTwo(sandsStatTwo);
                existingCharacter.setSandsStatThree(sandsStatThree);
                existingCharacter.setGobletStatOne(gobletStatOne);
                existingCharacter.setGobletStatTwo(gobletStatTwo);
                existingCharacter.setGobletStatThree(gobletStatThree);
                existingCharacter.setCircletStatOne(circletStatOne);
                existingCharacter.setCircletStatTwo(circletStatTwo);
                existingCharacter.setCircletStatThree(circletStatThree);
                existingCharacter.setSubstatOne(substatOne);
                existingCharacter.setSubstatTwo(substatTwo);
                existingCharacter.setSubstatThree(substatThree);
                Optional<Weapon> repositoryWeaponOne = weaponsRepository.findByNameIgnoreCaseIs(weaponOneName);
                if (repositoryWeaponOne.isEmpty()) {
                    existingCharacter.setWeaponOneId(null);
                    existingCharacter.setWeaponOne(null);
                } else {
                    Weapon weaponOne = repositoryWeaponOne.get();
                    existingCharacter.setWeaponOneId(weaponOne.getId());
                    existingCharacter.setWeaponOne(weaponOne);
                }
                Optional<Weapon> repositoryWeaponTwo = weaponsRepository.findByNameIgnoreCaseIs(weaponTwoName);
                if (repositoryWeaponTwo.isEmpty()) {
                    existingCharacter.setWeaponTwoId(null);
                    existingCharacter.setWeaponTwo(null);
                } else {
                    Weapon weaponTwo = repositoryWeaponTwo.get();
                    existingCharacter.setWeaponTwoId(weaponTwo.getId());
                    existingCharacter.setWeaponTwo(weaponTwo);
                }
                Optional<Weapon> repositoryWeaponThree =
                        weaponsRepository.findByNameIgnoreCaseIs(weaponThreeName);
                if (repositoryWeaponThree.isEmpty()) {
                    existingCharacter.setWeaponThreeId(null);
                    existingCharacter.setWeaponThree(null);
                } else {
                    Weapon weaponThree = repositoryWeaponThree.get();
                    existingCharacter.setWeaponThreeId(weaponThree.getId());
                    existingCharacter.setWeaponThree(weaponThree);
                }
                Optional<Weapon> repositoryWeaponFour = weaponsRepository.findByNameIgnoreCaseIs(weaponFourName);
                if (repositoryWeaponFour.isEmpty()) {
                    existingCharacter.setWeaponFourId(null);
                    existingCharacter.setWeaponFour(null);
                } else {
                    Weapon weaponFour = repositoryWeaponFour.get();
                    existingCharacter.setWeaponFourId(weaponFour.getId());
                    existingCharacter.setWeaponFour(weaponFour);
                }
                Optional<Weapon> repositoryWeaponFive = weaponsRepository.findByNameIgnoreCaseIs(weaponFiveName);
                if (repositoryWeaponFive.isEmpty()) {
                    existingCharacter.setWeaponFiveId(null);
                    existingCharacter.setWeaponFive(null);
                } else {
                    Weapon weaponFive = repositoryWeaponFive.get();
                    existingCharacter.setWeaponFiveId(weaponFive.getId());
                    existingCharacter.setWeaponFive(weaponFive);
                }
                Optional<Artifact> repositoryArtifactSetOneFirst =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetOneNameFirst);
                if (repositoryArtifactSetOneFirst.isEmpty()) {
                    existingCharacter.setArtifactSetOneIdFirst(null);
                    existingCharacter.setArtifactSetOneFirst(null);
                } else {
                    Artifact artifactSetOneFirst = repositoryArtifactSetOneFirst.get();
                    existingCharacter.setArtifactSetOneIdFirst(artifactSetOneFirst.getId());
                    existingCharacter.setArtifactSetOneFirst(artifactSetOneFirst);
                }
                Optional<Artifact> repositoryArtifactSetOneSecond =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetOneNameSecond);
                if (repositoryArtifactSetOneSecond.isEmpty()) {
                    existingCharacter.setArtifactSetOneIdSecond(null);
                    existingCharacter.setArtifactSetOneSecond(null);
                } else {
                    Artifact artifactSetOneSecond = repositoryArtifactSetOneSecond.get();
                    existingCharacter.setArtifactSetOneIdSecond(artifactSetOneSecond.getId());
                    existingCharacter.setArtifactSetOneSecond(artifactSetOneSecond);
                }
                Optional<Artifact> repositoryArtifactSetTwoFirst =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetTwoNameFirst);
                if (repositoryArtifactSetTwoFirst.isEmpty()) {
                    existingCharacter.setArtifactSetTwoIdFirst(null);
                    existingCharacter.setArtifactSetTwoFirst(null);
                } else {
                    Artifact artifactSetTwoFirst = repositoryArtifactSetTwoFirst.get();
                    existingCharacter.setArtifactSetTwoIdFirst(artifactSetTwoFirst.getId());
                    existingCharacter.setArtifactSetTwoFirst(artifactSetTwoFirst);
                }
                Optional<Artifact> repositoryArtifactSetTwoSecond =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetTwoNameSecond);
                if (repositoryArtifactSetTwoSecond.isEmpty()) {
                    existingCharacter.setArtifactSetTwoIdSecond(null);
                    existingCharacter.setArtifactSetTwoSecond(null);
                } else {
                    Artifact artifactSetTwoSecond = repositoryArtifactSetTwoSecond.get();
                    existingCharacter.setArtifactSetTwoIdSecond(artifactSetTwoSecond.getId());
                    existingCharacter.setArtifactSetTwoSecond(artifactSetTwoSecond);
                }
                Optional<Artifact> repositoryArtifactSetThreeFirst =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetThreeNameFirst);
                if (repositoryArtifactSetThreeFirst.isEmpty()) {
                    existingCharacter.setArtifactSetThreeIdFirst(null);
                    existingCharacter.setArtifactSetThreeFirst(null);
                } else {
                    Artifact artifactSetThreeFirst = repositoryArtifactSetThreeFirst.get();
                    existingCharacter.setArtifactSetThreeIdFirst(artifactSetThreeFirst.getId());
                    existingCharacter.setArtifactSetThreeFirst(artifactSetThreeFirst);
                }
                Optional<Artifact> repositoryArtifactSetThreeSecond =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetThreeNameSecond);
                if (repositoryArtifactSetThreeSecond.isEmpty()) {
                    existingCharacter.setArtifactSetThreeIdSecond(null);
                    existingCharacter.setArtifactSetThreeSecond(null);
                } else {
                    Artifact artifactSetThreeSecond = repositoryArtifactSetThreeSecond.get();
                    existingCharacter.setArtifactSetThreeIdSecond(artifactSetThreeSecond.getId());
                    existingCharacter.setArtifactSetThreeSecond(artifactSetThreeSecond);
                }
                Optional<Artifact> repositoryArtifactSetFourFirst =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetFourNameFirst);
                if (repositoryArtifactSetFourFirst.isEmpty()) {
                    existingCharacter.setArtifactSetFourIdFirst(null);
                    existingCharacter.setArtifactSetFourFirst(null);
                } else {
                    Artifact artifactSetFourFirst = repositoryArtifactSetFourFirst.get();
                    existingCharacter.setArtifactSetFourIdFirst(artifactSetFourFirst.getId());
                    existingCharacter.setArtifactSetFourFirst(artifactSetFourFirst);
                }
                Optional<Artifact> repositoryArtifactSetFourSecond =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetFourNameSecond);
                if (repositoryArtifactSetFourSecond.isEmpty()) {
                    existingCharacter.setArtifactSetFourIdSecond(null);
                    existingCharacter.setArtifactSetFourSecond(null);
                } else {
                    Artifact artifactSetFourSecond = repositoryArtifactSetFourSecond.get();
                    existingCharacter.setArtifactSetFourIdSecond(artifactSetFourSecond.getId());
                    existingCharacter.setArtifactSetFourSecond(artifactSetFourSecond);
                }
                Optional<Artifact> repositoryArtifactSetFiveFirst =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetFiveNameFirst);
                if (repositoryArtifactSetFiveFirst.isEmpty()) {
                    existingCharacter.setArtifactSetFiveIdFirst(null);
                    existingCharacter.setArtifactSetFiveFirst(null);
                } else {
                    Artifact artifactSetFiveFirst = repositoryArtifactSetFiveFirst.get();
                    existingCharacter.setArtifactSetFiveIdFirst(artifactSetFiveFirst.getId());
                    existingCharacter.setArtifactSetFiveFirst(artifactSetFiveFirst);
                }
                Optional<Artifact> repositoryArtifactSetFiveSecond =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetFiveNameSecond);
                if (repositoryArtifactSetFiveSecond.isEmpty()) {
                    existingCharacter.setArtifactSetFiveIdSecond(null);
                    existingCharacter.setArtifactSetFiveSecond(null);
                } else {
                    Artifact artifactSetFiveSecond = repositoryArtifactSetFiveSecond.get();
                    existingCharacter.setArtifactSetFiveIdSecond(artifactSetFiveSecond.getId());
                    existingCharacter.setArtifactSetFiveSecond(artifactSetFiveSecond);
                }
                characters.add(existingCharacter);
            } else {
                log.info("createEntities(): Character does not exist: " + name);
                Optional<Element> repositoryElement = elementsRepository.findByNameIgnoreCaseIs(elementName);
                if (repositoryElement.isEmpty()) {
                    log.error("createEntities(): Element does not exist: " + elementName);
                    throw new EntityCreationException("Element does not exist: " + elementName);
                }
                Element element = repositoryElement.get();
                Optional<Weapon> repositoryWeaponOne = weaponsRepository.findByNameIgnoreCaseIs(weaponOneName);
                Optional<Weapon> repositoryWeaponTwo = weaponsRepository.findByNameIgnoreCaseIs(weaponTwoName);
                Optional<Weapon> repositoryWeaponThree =
                        weaponsRepository.findByNameIgnoreCaseIs(weaponThreeName);
                Optional<Weapon> repositoryWeaponFour = weaponsRepository.findByNameIgnoreCaseIs(weaponFourName);
                Optional<Weapon> repositoryWeaponFive = weaponsRepository.findByNameIgnoreCaseIs(weaponFiveName);
                Optional<Artifact> repositoryArtifactSetOneFirst =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetOneNameFirst);
                Optional<Artifact> repositoryArtifactSetOneSecond =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetOneNameSecond);
                Optional<Artifact> repositoryArtifactSetTwoFirst =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetTwoNameFirst);
                Optional<Artifact> repositoryArtifactSetTwoSecond =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetTwoNameSecond);
                Optional<Artifact> repositoryArtifactSetThreeFirst =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetThreeNameFirst);
                Optional<Artifact> repositoryArtifactSetThreeSecond =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetThreeNameSecond);
                Optional<Artifact> repositoryArtifactSetFourFirst =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetFourNameFirst);
                Optional<Artifact> repositoryArtifactSetFourSecond =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetFourNameSecond);
                Optional<Artifact> repositoryArtifactSetFiveFirst =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetFiveNameFirst);
                Optional<Artifact> repositoryArtifactSetFiveSecond =
                        artifactsRepository.findByNameIgnoreCaseIs(artifactSetFiveNameSecond);
                Character character = Character.builder()
                                               .name(name)
                                               .imageUrl(imageUrl)
                                               .rarity(rarity)
                                               .elementId(element.getId())
                                               .element(element)
                                               .weaponType(weaponType)
                                               .sandsStatOne(sandsStatOne)
                                               .sandsStatTwo(sandsStatTwo)
                                               .sandsStatThree(sandsStatThree)
                                               .gobletStatOne(gobletStatOne)
                                               .gobletStatTwo(gobletStatTwo)
                                               .gobletStatThree(gobletStatThree)
                                               .circletStatOne(circletStatOne)
                                               .circletStatTwo(circletStatTwo)
                                               .circletStatThree(circletStatThree)
                                               .substatOne(substatOne)
                                               .substatTwo(substatTwo)
                                               .substatThree(substatThree)
                                               .weaponOneId(repositoryWeaponOne.<java.util.UUID>map(Weapon::getId)
                                                                               .orElse(null))
                                               .weaponOne(repositoryWeaponOne.orElse(null))
                                               .weaponTwoId(repositoryWeaponTwo.<java.util.UUID>map(Weapon::getId)
                                                                               .orElse(null))
                                               .weaponTwo(repositoryWeaponTwo.orElse(null))
                                               .weaponThreeId(repositoryWeaponThree.<java.util.UUID>map(Weapon::getId)
                                                                                   .orElse(null))
                                               .weaponThree(repositoryWeaponThree.orElse(null))
                                               .weaponFourId(repositoryWeaponFour.<java.util.UUID>map(Weapon::getId)
                                                                                 .orElse(null))
                                               .weaponFour(repositoryWeaponFour.orElse(null))
                                               .weaponFiveId(repositoryWeaponFive.<java.util.UUID>map(Weapon::getId)
                                                                                 .orElse(null))
                                               .weaponFive(repositoryWeaponFive.orElse(null))
                                               .artifactSetOneIdFirst(repositoryArtifactSetOneFirst.<java.util.UUID>map(
                                                       Artifact::getId).orElse(null))
                                               .artifactSetOneFirst(repositoryArtifactSetOneFirst.orElse(null))
                                               .artifactSetOneIdSecond(repositoryArtifactSetOneSecond.<java.util.UUID>map(
                                                       Artifact::getId).orElse(null))
                                               .artifactSetOneSecond(repositoryArtifactSetOneSecond.orElse(null))
                                               .artifactSetTwoIdFirst(repositoryArtifactSetTwoFirst.<java.util.UUID>map(
                                                       Artifact::getId).orElse(null))
                                               .artifactSetTwoFirst(repositoryArtifactSetTwoFirst.orElse(null))
                                               .artifactSetTwoIdSecond(repositoryArtifactSetTwoSecond.<java.util.UUID>map(
                                                       Artifact::getId).orElse(null))
                                               .artifactSetTwoSecond(repositoryArtifactSetTwoSecond.orElse(null))
                                               .artifactSetThreeIdFirst(repositoryArtifactSetThreeFirst.<java.util.UUID>map(
                                                       Artifact::getId).orElse(null))
                                               .artifactSetThreeFirst(repositoryArtifactSetThreeFirst.orElse(null))
                                               .artifactSetThreeIdSecond(repositoryArtifactSetThreeSecond.<java.util.UUID>map(
                                                       Artifact::getId).orElse(null))
                                               .artifactSetThreeSecond(repositoryArtifactSetThreeSecond.orElse(null))
                                               .artifactSetFourIdFirst(repositoryArtifactSetFourFirst.<java.util.UUID>map(
                                                       Artifact::getId).orElse(null))
                                               .artifactSetFourFirst(repositoryArtifactSetFourFirst.orElse(null))
                                               .artifactSetFourIdSecond(repositoryArtifactSetFourSecond.<java.util.UUID>map(
                                                       Artifact::getId).orElse(null))
                                               .artifactSetFourSecond(repositoryArtifactSetFourSecond.orElse(null))
                                               .artifactSetFiveIdFirst(repositoryArtifactSetFiveFirst.<java.util.UUID>map(
                                                       Artifact::getId).orElse(null))
                                               .artifactSetFiveFirst(repositoryArtifactSetFiveFirst.orElse(null))
                                               .artifactSetFiveIdSecond(repositoryArtifactSetFiveSecond.<java.util.UUID>map(
                                                       Artifact::getId).orElse(null))
                                               .artifactSetFiveSecond(repositoryArtifactSetFiveSecond.orElse(null))
                                               .build();
                characters.add(character);
            }
        }

        charactersRepository.saveAllAndFlush(characters);
    }

}
