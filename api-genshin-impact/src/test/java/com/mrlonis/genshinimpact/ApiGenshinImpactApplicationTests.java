package com.mrlonis.genshinimpact;

import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = ApiGenshinImpactApplication.class)
@ActiveProfiles("test-h2")
@AutoConfigureTestDatabase
class ApiGenshinImpactApplicationTests {

    @Test
    void contextLoads() {
        assertTrue(true);
    }
}
