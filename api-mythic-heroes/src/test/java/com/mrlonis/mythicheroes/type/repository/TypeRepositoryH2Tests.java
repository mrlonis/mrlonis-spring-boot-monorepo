package com.mrlonis.mythicheroes.type.repository;

import com.mrlonis.mythicheroes.templates.repsoitory.RepositoryH2Tests;
import com.mrlonis.mythicheroes.type.Type;
import com.mrlonis.mythicheroes.type.TypeRepository;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ActiveProfiles;

@DataJpaTest
@ActiveProfiles("h2")
public class TypeRepositoryH2Tests extends RepositoryH2Tests<Type, TypeRepository> {
}
