package com.mrlonis.mythicheroes.config;

import com.mrlonis.mythicheroes.faction.Faction;
import com.mrlonis.mythicheroes.mythichero.MythicHero;
import com.mrlonis.mythicheroes.rarity.Rarity;
import com.mrlonis.mythicheroes.type.Type;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.core.mapping.RepositoryDetectionStrategy;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

@Component
public class SpringDataRestConfig implements RepositoryRestConfigurer {
    @Override
    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {
        config.exposeIdsFor(MythicHero.class);
        config.exposeIdsFor(Faction.class);
        config.exposeIdsFor(Rarity.class);
        config.exposeIdsFor(Type.class);
        config.setRepositoryDetectionStrategy(RepositoryDetectionStrategy.RepositoryDetectionStrategies.ALL);
    }
}
