package com.mrlonis.genshinimpact.controllers;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@ActiveProfiles("test-h2")
@AutoConfigureTestDatabase
class CharactersControllerSmokeTests {
    @Autowired
    private CharactersController controller;

    @Test
    void contextLoads() {
        assertNotNull(controller);
    }
}
