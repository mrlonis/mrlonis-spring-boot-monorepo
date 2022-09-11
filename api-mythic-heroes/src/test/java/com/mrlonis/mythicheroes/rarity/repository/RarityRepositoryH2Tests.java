package com.mrlonis.mythicheroes.rarity.repository;

import com.mrlonis.mythicheroes.rarity.Rarity;
import com.mrlonis.mythicheroes.rarity.RarityRepository;
import com.mrlonis.mythicheroes.templates.repsoitory.RepositoryH2Tests;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ActiveProfiles;

@DataJpaTest
@ActiveProfiles("h2")
public class RarityRepositoryH2Tests extends RepositoryH2Tests<Rarity, RarityRepository> {
}
