package com.mrlonis.mythicheroes.faction.repository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.test.web.server.LocalServerPort;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.ActiveProfiles;

import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
class FactionRepositoryHttpRequestTests {

    @LocalServerPort
    private int port;

    @Autowired
    private TestRestTemplate restTemplate;

    @Test
    void shouldReturnAllForEntity() {
        String route = "api/faction";
        String url = String.format("http://localhost:%s/%s", port, route);

        ResponseEntity<String> result = this.restTemplate.exchange(url, HttpMethod.GET, null, String.class);
        String body = result.getBody();
        assertNotNull(body);
    }
}
