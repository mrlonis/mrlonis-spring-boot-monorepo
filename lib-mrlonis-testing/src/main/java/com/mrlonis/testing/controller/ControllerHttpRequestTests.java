package com.mrlonis.testing.controller;

import com.mrlonis.testing.PaginatedResponse;
import com.mrlonis.types.BaseEntity;
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
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public class ControllerHttpRequestTests<E extends BaseEntity> {

    private final String route;

    @LocalServerPort
    private int port;

    @Autowired
    private TestRestTemplate restTemplate;

    public ControllerHttpRequestTests(String route) {
        this.route = route;
    }

    @Test
    public void charactersShouldReturnAll() {
        ParameterizedTypeReference<PaginatedResponse<E>> responseType = new ParameterizedTypeReference<>() {
        };

        ResponseEntity<PaginatedResponse<E>> result = this.restTemplate.exchange(
                "http://localhost:" + port + route, HttpMethod.GET, null, responseType);
        System.out.println(result);
        PaginatedResponse<E> body = result.getBody();
        assertNotNull(body);
        assertEquals(0, body.getPageable().getPageNumber());
    }

}
