package com.mrlonis.genshinimpact.repositories;

import com.mrlonis.genshinimpact.entities.Element;
import java.util.Optional;
import java.util.UUID;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "elements")
@CrossOrigin(origins = "http://localhost:3000")
public interface ElementsRepository extends JpaRepository<Element, UUID> {
    @RestResource(path = "findByName", rel = "findByName")
    Optional<Element> findByNameIgnoreCaseIs(@Param("name") String name);
}
