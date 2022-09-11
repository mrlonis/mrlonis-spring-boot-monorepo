package com.mrlonis.mythicheroes.templates.repsoitory;

import com.mrlonis.mythicheroes.PaginatedResponse;
import com.mrlonis.mythicheroes.mythichero.MythicHero;
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
public abstract class RepositoryHttpRequestTests {
    private final String route;

    @LocalServerPort
    private int port;

    @Autowired
    private TestRestTemplate restTemplate;

    protected RepositoryHttpRequestTests(String route) {
        this.route = route;
    }

    @Test
    public void charactersShouldReturnAll() {
        ParameterizedTypeReference<PaginatedResponse<MythicHero>> responseType = new ParameterizedTypeReference<>() {
        };

        String url = String.format("http://localhost:%s/api/%s", port, this.route);

        ResponseEntity<String> result = this.restTemplate.exchange(
                url, HttpMethod.GET, null, String.class);
        System.out.println(result);
        String body = result.getBody();
        assertNotNull(body);
//        assertEquals(0, body.getPageable().getPageNumber());
    }
}
