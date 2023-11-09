package com.mrlonis.genshinimpact.repositories;

import com.mrlonis.types.IBaseEntity;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

@Component
public class ProjectRepository {
    private static final Logger LOG = LoggerFactory.getLogger(ProjectRepository.class);

    public <ID, R extends JpaRepository<T, ID>, T extends IBaseEntity> T save(R repository, T entity) {
        try {
            return repository.save(entity);
        } catch (DataAccessException | IllegalArgumentException e) {
            LOG.error(e.getMessage(), e);
            throw e;
        }
    }

    public <ID, R extends JpaRepository<T, ID>, T extends IBaseEntity> void delete(R repository, T entity) {
        try {
            repository.delete(entity);
        } catch (DataAccessException | IllegalArgumentException e) {
            LOG.error(e.getMessage(), e);
            throw e;
        }
    }
}
