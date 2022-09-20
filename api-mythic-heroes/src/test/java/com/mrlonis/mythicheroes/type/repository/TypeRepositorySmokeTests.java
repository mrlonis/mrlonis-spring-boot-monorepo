package com.mrlonis.mythicheroes.type.repository;

import com.mrlonis.mythicheroes.type.TypeRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public class TypeRepositorySmokeTests {
    @Autowired
    private TypeRepository repository;

    @Test
    public void contextLoads() {
        assertNotNull(repository);
    }
}
