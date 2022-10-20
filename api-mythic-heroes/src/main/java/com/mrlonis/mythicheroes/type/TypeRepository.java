package com.mrlonis.mythicheroes.type;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;
import java.util.UUID;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "type", exported = false)
@CrossOrigin(origins = {"http://localhost:4202"})
public interface TypeRepository extends PagingAndSortingRepository<Type, UUID> {
    @RestResource(path = "findBy", rel = "findBy")
    List<Type> findByNameIgnoreCaseContains(@Param("name") String name);
}
