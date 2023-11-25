package com.mrlonis.honkaistarrail.config;

import com.mrlonis.honkaistarrail.entities.Character;
import com.mrlonis.honkaistarrail.entities.CombatPath;
import com.mrlonis.honkaistarrail.entities.CombatType;
import com.mrlonis.honkaistarrail.entities.LightCone;
import com.mrlonis.honkaistarrail.entities.Ornament;
import com.mrlonis.honkaistarrail.entities.Relic;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

@Component
public class SpringDataRestConfig implements RepositoryRestConfigurer {
    @Override
    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {
        config.exposeIdsFor(Character.class);
        config.exposeIdsFor(CombatPath.class);
        config.exposeIdsFor(CombatType.class);
        config.exposeIdsFor(LightCone.class);
        config.exposeIdsFor(Ornament.class);
        config.exposeIdsFor(Relic.class);
    }
}
