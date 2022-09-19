package com.mrlonis.mythicheroes.rarity.repository;

import com.mrlonis.mythicheroes.rarity.Rarity;
import com.mrlonis.testing.repsoitory.RepositoryHttpRequestTests;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public class RarityRepositoryHttpRequestTests extends RepositoryHttpRequestTests<Rarity> {
    RarityRepositoryHttpRequestTests() {
        super("api/rarity");
    }
}
