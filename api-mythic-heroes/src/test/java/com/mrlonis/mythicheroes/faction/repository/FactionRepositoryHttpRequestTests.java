package com.mrlonis.mythicheroes.faction.repository;

import com.mrlonis.mythicheroes.faction.Faction;
import com.mrlonis.testing.repsoitory.RepositoryHttpRequestTests;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public class FactionRepositoryHttpRequestTests extends RepositoryHttpRequestTests<Faction> {
    FactionRepositoryHttpRequestTests() {
        super("api/faction");
    }
}
