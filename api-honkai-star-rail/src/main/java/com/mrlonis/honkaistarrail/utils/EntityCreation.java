package com.mrlonis.honkaistarrail.utils;

import com.mrlonis.honkaistarrail.entities.CombatType;
import com.mrlonis.honkaistarrail.exceptions.EntityCreationException;
import com.mrlonis.honkaistarrail.repositories.CombatTypesRepository;
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

    @EventListener(ContextRefreshedEvent.class)
    public void contextRefreshedEvent() {
        log.info("contextRefreshedEvent(): Starting...");
        createCombatTypesEntities(parseCsvFile("csv/combatTypes.csv"));
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

    private void createCombatTypesEntities(List<String[]> csvFile) {
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
}
