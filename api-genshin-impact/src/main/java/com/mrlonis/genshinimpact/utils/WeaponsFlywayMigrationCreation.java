package com.mrlonis.genshinimpact.utils;

import lombok.extern.slf4j.Slf4j;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Slf4j
public class WeaponsFlywayMigrationCreation {
    private WeaponsFlywayMigrationCreation() {
    }

    public static void createWeaponsFlywayMigration() {
        log.info("WeaponsFlywayMigrationCreation: createWeaponsFlywayMigration(): Starting...");

        List<List<String>> records = new ArrayList<>();
        ClassLoader classloader = Thread.currentThread().getContextClassLoader();
        try (InputStream is = classloader.getResourceAsStream("csv/weapons.csv")) {
            if (is == null) {
                log.error("WeaponsFlywayMigrationCreation: createWeaponsFlywayMigration(): Error: File not found!");
                throw new RuntimeException("File not found!");
            }

            BufferedReader br = new BufferedReader(new InputStreamReader(is, StandardCharsets.UTF_8));
            String line;
            while ((line = br.readLine()) != null) {
                String[] values = line.split(",");
                records.add(Arrays.asList(values));
            }
            log.info("WeaponsFlywayMigrationCreation: createWeaponsFlywayMigration(): Records: " + records);
        } catch (IOException e) {
            log.error("WeaponsFlywayMigrationCreation: createWeaponsFlywayMigration(): Error: " + e.getMessage());
            throw new RuntimeException(e);
        }

        try {
            String str = "Hello";
            BufferedWriter writer = new BufferedWriter(new FileWriter("src/main/resources/db/migration/h2/test.txt"));
            writer.write(str);

            writer.close();
        } catch (IOException e) {
            log.error("WeaponsFlywayMigrationCreation: createWeaponsFlywayMigration(): Error: " + e.getMessage());
            throw new RuntimeException(e);
        }

        log.info("WeaponsFlywayMigrationCreation: createWeaponsFlywayMigration(): Finished!");
    }
}
