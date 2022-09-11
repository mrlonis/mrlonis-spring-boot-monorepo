package com.mrlonis.mythicheroes.templates.controller;

import com.mrlonis.mythicheroes.mythichero.MythicHeroController;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public class ControllerSmokeTests {
    @Autowired
    private MythicHeroController mythicHeroController;

    @Test
    public void contextLoads() {
        assertNotNull(mythicHeroController);
    }
}
