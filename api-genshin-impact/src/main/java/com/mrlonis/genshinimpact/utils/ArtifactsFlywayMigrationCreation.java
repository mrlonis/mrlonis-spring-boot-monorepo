package com.mrlonis.genshinimpact.utils;

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
public class ArtifactsFlywayMigrationCreation {
    private ArtifactsFlywayMigrationCreation() {
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
        try (InputStream inputStream = classloader.getResourceAsStream("csv/artifacts.csv")) {
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
                            INSERT INTO Artifacts (
                                    name,
                                    imageUrl,
                                    onePieceSetEffect,
                                    twoPieceSetEffect,
                                    fourPieceSetEffect
                                )
                            VALUES (
                            """);
        for (int i = 0; i < csvFile.size(); i++) {
            String[] row = csvFile.get(i);
            if (row.length != 5) {
                String errorMessage =
                        String.format("createFileContents(): Row %s size is not 5 and was instead %s! row: %s", i,
                                      row.length, Arrays.toString(row));
                log.error(errorMessage);
                throw new RuntimeException(errorMessage);
            }

            fileContents.append(row[0] != null ? String.format("        '%s', -- name%n", row[0].replace("'", "''")) :
                                "        NULL, -- name\n");
            fileContents.append(row[1] != null ? String.format("        '%s', -- imageUrl%n", row[1].replace("'", "''")) :
                                "        NULL, -- imageUrl\n");
            fileContents.append(row[2] != null ? String.format("        '%s', -- onePieceSetEffect%n", row[2].replace("'", "''")) :
                                "        NULL, -- onePieceSetEffect\n");
            fileContents.append(row[3] != null ? String.format("        '%s', -- twoPieceSetEffect%n", row[3].replace("'", "''")) :
                                "        NULL, -- twoPieceSetEffect\n");
            fileContents.append(row[4] != null ? String.format("        '%s' -- fourPieceSetEffect%n", row[4].replace("'", "''")) :
                                "        NULL -- fourPieceSetEffect\n");
            fileContents.append(")");
            if (i != csvFile.size() - 1) {
                fileContents.append(",\n(");
            } else {
                fileContents.append(";");
            }
        }
        return fileContents.toString();
    }

    private static void writeMigrationFile(String fileContents) {
        try {
            BufferedWriter writer = new BufferedWriter(
                    new FileWriter("src/main/resources/db/migration/h2/V1_1_2__Create_Artifacts_Data.sql"));
            writer.write(fileContents);

            writer.close();
        } catch (IOException e) {
            log.error("writeMigrationFile(): Error: " + e.getMessage());
            throw new RuntimeException(e);
        }
    }
}
