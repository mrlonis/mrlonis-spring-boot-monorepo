package com.mrlonis.mythicheroes.mythichero.controller;

import com.mrlonis.testing.controller.ControllerWebApplicationTests;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@AutoConfigureMockMvc
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public class MythicHeroControllerWebApplicationTests extends ControllerWebApplicationTests {
    public MythicHeroControllerWebApplicationTests() {
        super("/api/v2/mythicHero");
    }
}
