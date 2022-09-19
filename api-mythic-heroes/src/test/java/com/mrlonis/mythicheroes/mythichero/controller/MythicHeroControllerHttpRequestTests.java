package com.mrlonis.mythicheroes.mythichero.controller;

import com.mrlonis.mythicheroes.mythichero.MythicHero;
import com.mrlonis.testing.controller.ControllerHttpRequestTests;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public class MythicHeroControllerHttpRequestTests extends ControllerHttpRequestTests<MythicHero> {
    MythicHeroControllerHttpRequestTests() {
        super("/api/v2/mythicHero");
    }
}
