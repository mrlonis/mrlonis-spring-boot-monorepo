package com.mrlonis.mythicheroes.type.repository;

import com.mrlonis.mythicheroes.type.Type;
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

import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public class TypeRepositoryHttpRequestTests {

    @LocalServerPort
    private int port;

    @Autowired
    private TestRestTemplate restTemplate;

    @Test
    public void shouldReturnAllForEntity() {
        ParameterizedTypeReference<PaginatedResponse<Type>> responseType = new ParameterizedTypeReference<>() {
        };

        String route = "api/type";
        String url = String.format("http://localhost:%s/%s", port, route);

        ResponseEntity<String> result = this.restTemplate.exchange(url, HttpMethod.GET, null, String.class);
        String body = result.getBody();
        assertNotNull(body);
        //        assertEquals(0, body.getPageable().getPageNumber());
    }
}
