package com.mrlonis.mythicheroes.rarity.repository;

import com.mrlonis.testing.repsoitory.RepositoryWebApplicationTests;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@AutoConfigureMockMvc
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public class RarityRepositoryWebApplicationTests extends RepositoryWebApplicationTests {
    RarityRepositoryWebApplicationTests() {
        super("api/rarity");
    }
}
