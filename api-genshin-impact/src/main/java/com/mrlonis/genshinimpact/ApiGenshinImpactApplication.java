package com.mrlonis.genshinimpact;

import com.mrlonis.genshinimpact.utils.ArtifactsFlywayMigrationCreation;
import com.mrlonis.genshinimpact.utils.CharactersFlywayMigrationCreation;
import com.mrlonis.genshinimpact.utils.WeaponsFlywayMigrationCreation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.CacheControl;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

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
        log.info("flywayMigrationCreation(): Starting...");

        WeaponsFlywayMigrationCreation.createFlywayMigration();
        ArtifactsFlywayMigrationCreation.createFlywayMigration();
        CharactersFlywayMigrationCreation.createFlywayMigration();

        log.info("flywayMigrationCreation(): Finished!");
    }
}
