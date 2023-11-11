package com.mrlonis.genshinimpact.controllers;

import com.mrlonis.genshinimpact.entities.Character;
import com.mrlonis.testing.PaginatedResponse;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.test.web.server.LocalServerPort;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.ActiveProfiles;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@ActiveProfiles("test-h2")
@AutoConfigureTestDatabase
class CharactersControllerHttpRequestTests {

    @LocalServerPort
    private int port;

    @Autowired
    private TestRestTemplate restTemplate;

    @Test
    void testShouldReturnAllForEntity() {
        ParameterizedTypeReference<PaginatedResponse<Character>> responseType = new ParameterizedTypeReference<>() {
        };

        String route = "/api/v2/characters";
        ResponseEntity<PaginatedResponse<Character>> result =
                this.restTemplate.exchange("http://localhost:" + port + route, HttpMethod.GET, null, responseType);
        PaginatedResponse<Character> body = result.getBody();
        assertNotNull(body);
        assertEquals(0, body.getPageable().getPageNumber());
    }

}
