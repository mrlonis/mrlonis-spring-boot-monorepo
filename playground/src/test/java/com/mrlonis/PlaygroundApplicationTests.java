package com.mrlonis;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.junit.jupiter.api.Assertions.assertTrue;

@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = PlaygroundApplicationTests.class)
@ActiveProfiles("test")
@AutoConfigureTestDatabase
class PlaygroundApplicationTests {

    @Test
    void contextLoads() {
        assertTrue(true);
    }

}
