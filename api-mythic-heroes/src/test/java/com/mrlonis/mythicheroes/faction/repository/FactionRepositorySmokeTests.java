package com.mrlonis.mythicheroes.faction.repository;

import com.mrlonis.mythicheroes.faction.FactionRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public class FactionRepositorySmokeTests {
    @Autowired
    private FactionRepository repository;

    @Test
    public void contextLoads() {
        assertNotNull(repository);
    }
}
