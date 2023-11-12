package com.mrlonis.genshinimpact;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.CacheControl;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;

@SpringBootApplication
@Slf4j
public class ApiGenshinImpactApplication implements WebMvcConfigurer {
    public static void main(String[] args) {
        flywayMigrationCreation();
        SpringApplication.run(ApiGenshinImpactApplication.class, args);
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/api/images/**")
                .addResourceLocations("classpath:/images/")
                .setCacheControl(CacheControl.maxAge(2, TimeUnit.HOURS).cachePublic());
    }

    public static void flywayMigrationCreation() {
        log.info("ApiGenshinImpactApplication: flywayMigrationCreation(): Starting...");

        List<List<String>> records = new ArrayList<>();
        ClassLoader classloader = Thread.currentThread().getContextClassLoader();
        try (InputStream is = classloader.getResourceAsStream("csv/weapons.csv")) {
            if (is == null) {
                log.error("ApiGenshinImpactApplication: flywayMigrationCreation(): Error: File not found!");
                throw new RuntimeException("File not found!");
            }

            BufferedReader br = new BufferedReader(new InputStreamReader(is, StandardCharsets.UTF_8));
            String line;
            while ((line = br.readLine()) != null) {
                String[] values = line.split(",");
                records.add(Arrays.asList(values));
            }
            log.info("ApiGenshinImpactApplication: flywayMigrationCreation(): Records: " + records);
        } catch (IOException e) {
            log.error("ApiGenshinImpactApplication: flywayMigrationCreation(): Error: " + e.getMessage());
            throw new RuntimeException(e);
        }

        log.info("ApiGenshinImpactApplication: flywayMigrationCreation(): Finished!");
    }
}
