package com.mrlonis.mythicheroes.type.repository;

import com.mrlonis.mythicheroes.type.Type;
import com.mrlonis.testing.repsoitory.RepositoryHttpRequestTests;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public class TypeRepositoryHttpRequestTests extends RepositoryHttpRequestTests<Type> {
    TypeRepositoryHttpRequestTests() {
        super("api/type");
    }
}
