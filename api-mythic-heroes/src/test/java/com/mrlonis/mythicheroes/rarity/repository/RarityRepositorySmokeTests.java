package com.mrlonis.mythicheroes.rarity.repository;

import com.mrlonis.mythicheroes.rarity.Rarity;
import com.mrlonis.mythicheroes.rarity.RarityRepository;
import com.mrlonis.testing.repsoitory.RepositorySmokeTests;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public class RarityRepositorySmokeTests extends RepositorySmokeTests<Rarity, RarityRepository> {
}
