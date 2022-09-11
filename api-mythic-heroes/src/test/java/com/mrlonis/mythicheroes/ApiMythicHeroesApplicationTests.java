package com.mrlonis.mythicheroes;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = ApiMythicHeroesApplication.class)
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
class ApiMythicHeroesApplicationTests {

    @Test
    void contextLoads() {
    }

}
