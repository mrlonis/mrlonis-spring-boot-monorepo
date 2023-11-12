package com.mrlonis.genshinimpact.utils;

import com.mrlonis.genshinimpact.converters.WeaponSecondaryStatsConverter;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import com.opencsv.enums.CSVReaderNullFieldIndicator;
import com.opencsv.exceptions.CsvException;
import lombok.extern.slf4j.Slf4j;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;

@Slf4j
public class WeaponsFlywayMigrationCreation {
    private WeaponsFlywayMigrationCreation() {
    }

    public static void createFlywayMigration() {
        log.info("createFlywayMigration(): Starting...");

        List<String[]> csvFile = parseCsvFile();
        String fileContents = createFileContents(csvFile);
        writeMigrationFile(fileContents);

        log.info("createFlywayMigration(): Finished!");
    }

    private static List<String[]> parseCsvFile() {
        ClassLoader classloader = Thread.currentThread().getContextClassLoader();
        try (InputStream inputStream = classloader.getResourceAsStream("csv/weapons.csv")) {
            if (inputStream == null) {
                log.error("parseCsvFile(): Error: File not found!");
                throw new RuntimeException("File not found!");
            }

            return readCsvFile(new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8)));
        } catch (IOException e) {
            log.error("parseCsvFile(): IOException: " + e.getMessage());
            throw new RuntimeException(e);
        }
    }

    private static List<String[]> readCsvFile(BufferedReader bufferedReader) {
        try (CSVReader csvReader = new CSVReaderBuilder(bufferedReader).withSkipLines(1)
                                                                       .withFieldAsNull(
                                                                               CSVReaderNullFieldIndicator.EMPTY_SEPARATORS)
                                                                       .build()) {
            return csvReader.readAll();
        } catch (CsvException e) {
            log.error("readCsvFile(): CsvException: " + e.getMessage());
            throw new RuntimeException(e);
        } catch (IOException e) {
            log.error("readCsvFile(): IOException: " + e.getMessage());
            throw new RuntimeException(e);
        }
    }

    private static String createFileContents(List<String[]> csvFile) {
        StringBuffer fileContents = new StringBuffer();
        fileContents.append("""
                            INSERT INTO Weapons (
                                    name,
                                    imageUrl,
                                    rarity,
                                    weaponType,
                                    secondaryStat,
                                    weaponAffix,
                                    affixDescription,
                                    description
                                )
                            VALUES (
                            """);
        for (int i = 0; i < csvFile.size(); i++) {
            String[] row = csvFile.get(i);
            if (row.length != 8) {
                String errorMessage =
                        String.format("createFileContents(): Row %s size is not 8 and was instead %s! row: %s", i,
                                      row.length, Arrays.toString(row));
                log.error(errorMessage);
                throw new RuntimeException(errorMessage);
            }

            String whitespace = " ".repeat(8);
            String parenthesisWhitespace = " ".repeat(4);
            fileContents.append(String.format("%s-- name%n%s%s,%n", whitespace, whitespace,
                                              row[0] != null ? String.format("'%s'", row[0].replace("'", "''")) :
                                              "NULL"));
            fileContents.append(String.format("%s-- imageUrl%n%s%s,%n", whitespace, whitespace,
                                              row[1] != null ? String.format("'%s'", row[1].replace("'", "''")) :
                                              "NULL"));
            fileContents.append(String.format("%s-- rarity%n%s%s,%n", whitespace, whitespace,
                                              row[2] != null ? row[2].replace("'", "''") : "NULL"));
            fileContents.append(String.format("%s-- weaponType%n%s%s,%n", whitespace, whitespace,
                                              row[3] != null ? String.format("'%s'", row[3].replace("'", "''")) :
                                              "NULL"));
            fileContents.append(String.format("%s-- secondaryStat%n%s%s,%n", whitespace, whitespace, row[4] != null ?
                                                                                                     String.format(
                                                                                                             "'%s'",
                                                                                                             WeaponSecondaryStatsConverter.convertToEntityAttributeFromCsvValue(
                                                                                                                                                  row[4].replace(
                                                                                                                                                          "'",
                                                                                                                                                          "''"))
                                                                                                                                          .getValue()) :
                                                                                                     "NULL"));
            fileContents.append(String.format("%s-- weaponAffix%n%s%s,%n", whitespace, whitespace,
                                                row[5] != null ? String.format("'%s'", row[5].replace("'", "''")) :
                                                "NULL"));
            fileContents.append(String.format("%s-- affixDescription%n%s%s,%n", whitespace, whitespace,
                                                row[6] != null ? String.format("'%s'", row[6].replace("'", "''")) :
                                                "NULL"));
            fileContents.append(String.format("%s-- description%n%s%s%n", whitespace, whitespace,
                                              row[7] != null ? String.format("'%s'", row[7].replace("'", "''")) :
                                              "NULL"));
            fileContents.append(String.format("%s%s", parenthesisWhitespace, ")"));
            if (i != csvFile.size() - 1) {
                fileContents.append(String.format(",%n%s%s%n", parenthesisWhitespace, "("));
            } else {
                fileContents.append(";\n");
            }
        }
        return fileContents.toString();
    }

    private static void writeMigrationFile(String fileContents) {
        try {
            BufferedWriter writer = new BufferedWriter(
                    new FileWriter("src/main/resources/db/migration/h2/V1_1_1__Create_Weapons_Data.sql"));
            writer.write(fileContents);

            writer.close();
        } catch (IOException e) {
            log.error("writeMigrationFile(): Error: " + e.getMessage());
            throw new RuntimeException(e);
        }
    }
}
