package com.mrlonis.genshinimpact.controllers;

import com.mrlonis.genshinimpact.dto.ArtifactBreakdown;
import com.mrlonis.genshinimpact.entities.Artifact;
import com.mrlonis.genshinimpact.entities.Character;
import com.mrlonis.genshinimpact.repositories.ArtifactsRepository;
import com.mrlonis.testing.PaginatedResponse;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.test.web.server.LocalServerPort;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.ActiveProfiles;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@ActiveProfiles("test-h2")
@AutoConfigureTestDatabase
class ArtifactBreakdownControllerTests {
    @LocalServerPort
    private int port;

    @Autowired
    private TestRestTemplate restTemplate;

    @Autowired
    private ArtifactsRepository artifactsRepository;

    @Test
    void testShouldReturnAllForEntity() {
        Optional<Artifact> repositoryArtifact = artifactsRepository.findByNameIgnoreCaseIs("Blizzard Strayer");
        assertTrue(repositoryArtifact.isPresent());

        Artifact artifact = repositoryArtifact.get();
        assertNotNull(artifact);
        assertNotNull(artifact.getId());

        ParameterizedTypeReference<PaginatedResponse<Character>> responseType = new ParameterizedTypeReference<>() {
        };

        String route = "/api/v2/artifactBreakdown";
        ResponseEntity<ArtifactBreakdown> result = this.restTemplate.exchange(
                "http://localhost:" + port + route + "?artifactId=" + artifact.getId().toString(),
                HttpMethod.GET,
                null,
                ArtifactBreakdown.class);
        assertEquals(HttpStatus.OK.value(), result.getStatusCode().value());
        ArtifactBreakdown body = result.getBody();
        assertNotNull(body);
        System.out.println(body);
    }
}
