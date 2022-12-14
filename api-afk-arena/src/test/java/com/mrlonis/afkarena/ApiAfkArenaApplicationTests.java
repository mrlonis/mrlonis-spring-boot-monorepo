package com.mrlonis.afkarena;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = ApiAfkArenaApplication.class)
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
class ApiAfkArenaApplicationTests {

    @Test
    void contextLoads() {
    }

}
