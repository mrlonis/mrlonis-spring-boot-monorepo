package com.mrlonis.mythicheroes.mythichero.repository;

import com.mrlonis.mythicheroes.mythichero.MythicHero;
import com.mrlonis.testing.repsoitory.RepositoryHttpRequestTests;

public class MythicHeroRepositoryHttpRequestTests extends RepositoryHttpRequestTests<MythicHero> {
    MythicHeroRepositoryHttpRequestTests() {
        super("api/mythicHero");
    }
}
