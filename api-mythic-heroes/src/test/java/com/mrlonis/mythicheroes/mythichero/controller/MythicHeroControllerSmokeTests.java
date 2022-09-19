package com.mrlonis.mythicheroes.mythichero.controller;

import com.mrlonis.mythicheroes.mythichero.MythicHeroController;
import com.mrlonis.testing.controller.ControllerSmokeTests;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public class MythicHeroControllerSmokeTests extends ControllerSmokeTests<MythicHeroController> {
}
