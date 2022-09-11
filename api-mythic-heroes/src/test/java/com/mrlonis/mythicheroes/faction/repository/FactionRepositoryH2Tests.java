package com.mrlonis.mythicheroes.faction.repository;

import com.mrlonis.mythicheroes.faction.Faction;
import com.mrlonis.mythicheroes.faction.FactionRepository;
import com.mrlonis.mythicheroes.templates.repsoitory.RepositoryH2Tests;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ActiveProfiles;

@DataJpaTest
@ActiveProfiles("h2")
public class FactionRepositoryH2Tests extends RepositoryH2Tests<Faction, FactionRepository> {
}
