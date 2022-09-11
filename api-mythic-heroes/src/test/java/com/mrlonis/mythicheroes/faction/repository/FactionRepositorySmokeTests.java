package com.mrlonis.mythicheroes.faction.repository;

import com.mrlonis.mythicheroes.faction.Faction;
import com.mrlonis.mythicheroes.faction.FactionRepository;
import com.mrlonis.mythicheroes.templates.repsoitory.RepositorySmokeTests;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public class FactionRepositorySmokeTests extends RepositorySmokeTests<Faction, FactionRepository> {
}
