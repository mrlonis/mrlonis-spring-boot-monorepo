package com.mrlonis.mythicheroes.mythichero.repository;

import com.mrlonis.mythicheroes.mythichero.MythicHeroRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public class MythicHeroRepositorySmokeTests {
    @Autowired
    private MythicHeroRepository repository;

    @Test
    public void contextLoads() {
        assertNotNull(repository);
    }
}
