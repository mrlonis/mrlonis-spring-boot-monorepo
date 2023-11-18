package com.mrlonis.honkaistarrail;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.junit.jupiter.api.Assertions.assertTrue;

@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = ApiHonkaiStarRailApplication.class)
@ActiveProfiles("test-h2")
@AutoConfigureTestDatabase
class ApiHonkaiStarRailApplicationTests {

    @Test
    void contextLoads() {
        assertTrue(true);
    }

}
