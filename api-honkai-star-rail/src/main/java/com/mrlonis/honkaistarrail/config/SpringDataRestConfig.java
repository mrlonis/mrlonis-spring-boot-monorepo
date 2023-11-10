package com.mrlonis.honkaistarrail.config;

import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

@Component
public class SpringDataRestConfig implements RepositoryRestConfigurer {
    @Override
    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {
        //        config.exposeIdsFor(Character.class);
        //        config.exposeIdsFor(Element.class);
        //        config.exposeIdsFor(Weapon.class);
        //        config.exposeIdsFor(ArtifactSet.class);
    }
}
