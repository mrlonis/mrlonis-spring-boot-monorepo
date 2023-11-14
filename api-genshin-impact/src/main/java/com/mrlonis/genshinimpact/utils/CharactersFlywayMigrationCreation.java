package com.mrlonis.genshinimpact.utils;

import com.mrlonis.genshinimpact.converters.GobletMainStatsConverter;
import com.mrlonis.genshinimpact.enums.GobletMainStats;
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
public class CharactersFlywayMigrationCreation {
    private CharactersFlywayMigrationCreation() {
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
        try (InputStream inputStream = classloader.getResourceAsStream("csv/characters.csv")) {
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
                                                                       .withFieldAsNull(CSVReaderNullFieldIndicator.EMPTY_SEPARATORS)
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
        StringBuilder fileContents = new StringBuilder();
        for (int i = 0; i < csvFile.size(); i++) {
            fileContents.append("""
                                INSERT INTO Characters (
                                        name,
                                        imageUrl,
                                        rarity,
                                        elementId,
                                        weaponType,
                                        sandsStatOne,
                                        sandsStatTwo,
                                        sandsStatThree,
                                        gobletStatOne,
                                        gobletStatTwo,
                                        gobletStatThree,
                                        circletStatOne,
                                        circletStatTwo,
                                        circletStatThree,
                                        substatOne,
                                        substatTwo,
                                        substatThree,
                                        substatFour,
                                        weaponOneId,
                                        weaponTwoId,
                                        weaponThreeId,
                                        weaponFourId,
                                        weaponFiveId,
                                        artifactSetOneIdFirst,
                                        artifactSetOneIdSecond,
                                        artifactSetTwoIdFirst,
                                        artifactSetTwoIdSecond,
                                        artifactSetThreeIdFirst,
                                        artifactSetThreeIdSecond,
                                        artifactSetFourIdFirst,
                                        artifactSetFourIdSecond,
                                        artifactSetFiveIdFirst,
                                        artifactSetFiveIdSecond
                                    )
                                VALUES (
                                """);

            String[] row = csvFile.get(i);
            if (row.length != 33) {
                String errorMessage = String.format(
                        "createFileContents(): Row %s size is not 33 and was instead %s! row: %s",
                        i,
                        row.length,
                        Arrays.toString(row));
                log.error(errorMessage);
                throw new RuntimeException(errorMessage);
            }

            String whitespace = " ".repeat(8);
            String parenthesisWhitespace = " ".repeat(4);
            fileContents.append(String.format("%s-- name%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[0] != null ? String.format("'%s'", row[0].replace("'", "''")) :
                                              "NULL"));
            fileContents.append(String.format("%s-- imageUrl%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[1] != null ? String.format("'%s'", row[1].replace("'", "''")) :
                                              "NULL"));
            fileContents.append(String.format("%s-- rarity%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[2] != null ? row[2].replace("'", "''") : "NULL"));
            fileContents.append(String.format("%s-- elementId%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[3] != null ? buildSubQuery("Elements",
                                                                             String.format("'%s'",
                                                                                           row[3].replace("'", "''"))) :
                                              "NULL"));
            fileContents.append(String.format("%s-- weaponType%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[4] != null ? String.format("'%s'", row[4].replace("'", "''")) :
                                              "NULL"));
            fileContents.append(String.format("%s-- sandsStatOne%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[5] != null ? String.format("'%s'", row[5].replace("'", "''")) :
                                              "NULL"));
            fileContents.append(String.format("%s-- sandsStatTwo%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[6] != null ? String.format("'%s'", row[6].replace("'", "''")) :
                                              "NULL"));
            fileContents.append(String.format("%s-- sandsStatThree%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[7] != null ? String.format("'%s'", row[7].replace("'", "''")) :
                                              "NULL"));
            GobletMainStats gobletMainStatOne = GobletMainStatsConverter.convertToEntityAttributeFromCsvValue(row[8]);
            fileContents.append(String.format("%s-- gobletStatOne%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              gobletMainStatOne != null ?
                                              String.format("'%s'", gobletMainStatOne.getValue()) : "NULL"));
            GobletMainStats gobletMainStatTwo = GobletMainStatsConverter.convertToEntityAttributeFromCsvValue(row[9]);
            fileContents.append(String.format("%s-- gobletStatTwo%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              gobletMainStatTwo != null ?
                                              String.format("'%s'", gobletMainStatTwo.getValue()) : "NULL"));
            GobletMainStats gobletMainStatThree =
                    GobletMainStatsConverter.convertToEntityAttributeFromCsvValue(row[10]);
            fileContents.append(String.format("%s-- gobletStatThree%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              gobletMainStatThree != null ?
                                              String.format("'%s'", gobletMainStatThree.getValue()) : "NULL"));
            fileContents.append(String.format("%s-- circletStatOne%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[11] != null ? String.format("'%s'", row[11].replace("'", "''")) :
                                              "NULL"));
            fileContents.append(String.format("%s-- circletStatTwo%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[12] != null ? String.format("'%s'", row[12].replace("'", "''")) :
                                              "NULL"));
            fileContents.append(String.format("%s-- circletStatThree%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[13] != null ? String.format("'%s'", row[13].replace("'", "''")) :
                                              "NULL"));
            fileContents.append(String.format("%s-- substatOne%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[14] != null ? String.format("'%s'", row[14].replace("'", "''")) :
                                              "NULL"));
            fileContents.append(String.format("%s-- substatTwo%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[15] != null ? String.format("'%s'", row[15].replace("'", "''")) :
                                              "NULL"));
            fileContents.append(String.format("%s-- substatThree%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[16] != null ? String.format("'%s'", row[16].replace("'", "''")) :
                                              "NULL"));
            fileContents.append(String.format("%s-- substatFour%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[17] != null ? String.format("'%s'", row[17].replace("'", "''")) :
                                              "NULL"));
            fileContents.append(String.format("%s-- weaponOneId%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[18] != null ? buildSubQuery("Weapons",
                                                                              String.format("'%s'",
                                                                                            row[18].replace("'",
                                                                                                            "''"))) :
                                              "NULL"));
            fileContents.append(String.format("%s-- weaponTwoId%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[19] != null ? buildSubQuery("Weapons",
                                                                              String.format("'%s'",
                                                                                            row[19].replace("'",
                                                                                                            "''"))) :
                                              "NULL"));
            fileContents.append(String.format("%s-- weaponThreeId%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[20] != null ? buildSubQuery("Weapons",
                                                                              String.format("'%s'",
                                                                                            row[20].replace("'",
                                                                                                            "''"))) :
                                              "NULL"));
            fileContents.append(String.format("%s-- weaponFourId%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[21] != null ? buildSubQuery("Weapons",
                                                                              String.format("'%s'",
                                                                                            row[21].replace("'",
                                                                                                            "''"))) :
                                              "NULL"));
            fileContents.append(String.format("%s-- weaponFiveId%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[22] != null ? buildSubQuery("Weapons",
                                                                              String.format("'%s'",
                                                                                            row[22].replace("'",
                                                                                                            "''"))) :
                                              "NULL"));
            fileContents.append(String.format("%s-- artifactSetOneIdFirst%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[23] != null ? buildSubQuery("Artifacts",
                                                                              String.format("'%s'",
                                                                                            row[23].replace("'",
                                                                                                            "''"))) :
                                              "NULL"));
            fileContents.append(String.format("%s-- artifactSetOneIdSecond%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[24] != null ? buildSubQuery("Artifacts",
                                                                              String.format("'%s'",
                                                                                            row[24].replace("'",
                                                                                                            "''"))) :
                                              "NULL"));
            fileContents.append(String.format("%s-- artifactSetTwoIdFirst%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[25] != null ? buildSubQuery("Artifacts",
                                                                              String.format("'%s'",
                                                                                            row[25].replace("'",
                                                                                                            "''"))) :
                                              "NULL"));
            fileContents.append(String.format("%s-- artifactSetTwoIdSecond%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[26] != null ? buildSubQuery("Artifacts",
                                                                              String.format("'%s'",
                                                                                            row[26].replace("'",
                                                                                                            "''"))) :
                                              "NULL"));
            fileContents.append(String.format("%s-- artifactSetThreeIdFirst%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[27] != null ? buildSubQuery("Artifacts",
                                                                              String.format("'%s'",
                                                                                            row[27].replace("'",
                                                                                                            "''"))) :
                                              "NULL"));
            fileContents.append(String.format("%s-- artifactSetThreeIdSecond%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[28] != null ? buildSubQuery("Artifacts",
                                                                              String.format("'%s'",
                                                                                            row[28].replace("'",
                                                                                                            "''"))) :
                                              "NULL"));
            fileContents.append(String.format("%s-- artifactSetFourIdFirst%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[29] != null ? buildSubQuery("Artifacts",
                                                                              String.format("'%s'",
                                                                                            row[29].replace("'",
                                                                                                            "''"))) :
                                              "NULL"));
            fileContents.append(String.format("%s-- artifactSetFourIdSecond%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[30] != null ? buildSubQuery("Artifacts",
                                                                              String.format("'%s'",
                                                                                            row[30].replace("'",
                                                                                                            "''"))) :
                                              "NULL"));
            fileContents.append(String.format("%s-- artifactSetFiveIdFirst%n%s%s,%n",
                                              whitespace,
                                              whitespace,
                                              row[31] != null ? buildSubQuery("Artifacts",
                                                                              String.format("'%s'",
                                                                                            row[31].replace("'",
                                                                                                            "''"))) :
                                              "NULL"));
            fileContents.append(String.format("%s-- artifactSetFiveIdSecond%n%s%s%n",
                                              whitespace,
                                              whitespace,
                                              row[32] != null ? buildSubQuery("Artifacts",
                                                                              String.format("'%s'",
                                                                                            row[32].replace("'",
                                                                                                            "''"))) :
                                              "NULL"));
            fileContents.append(String.format("%s%s", parenthesisWhitespace, ")"));
            fileContents.append(String.format(";%n%n"));
        }
        return fileContents.toString();
    }

    private static String buildSubQuery(String tableName, String value) {
        StringBuilder sb = new StringBuilder();
        String whitespace = " ".repeat(8);
        String subQueryWhitespace = " ".repeat(12);

        sb.append(String.format("(%n%sSELECT id%n%sFROM %s%n%sWHERE name = %s%n%s)",
                                subQueryWhitespace,
                                subQueryWhitespace,
                                tableName,
                                subQueryWhitespace,
                                value,
                                whitespace));

        return sb.toString();
    }

    private static void writeMigrationFile(String fileContents) {
        try {
            BufferedWriter writer = new BufferedWriter(new FileWriter(
                    "src/main/resources/db/migration/h2/V1_1_3__Create_Characters_Data.sql"));
            writer.write(fileContents);

            writer.close();
        } catch (IOException e) {
            log.error("writeMigrationFile(): Error: " + e.getMessage());
            throw new RuntimeException(e);
        }
    }
}
