package com.mrlonis.mythicheroes.type.repository;

import com.mrlonis.mythicheroes.type.Type;
import com.mrlonis.mythicheroes.type.TypeRepository;
import com.mrlonis.testing.repsoitory.RepositorySmokeTests;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@ActiveProfiles("h2")
@AutoConfigureTestDatabase
public class TypeRepositorySmokeTests extends RepositorySmokeTests<Type, TypeRepository> {
}
