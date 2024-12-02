package com.mrlonis.honkaistarrail.config;

import com.mrlonis.honkaistarrail.converters.BodyMainStatsConverter;
import com.mrlonis.honkaistarrail.converters.FeetMainStatsConverter;
import com.mrlonis.honkaistarrail.converters.LinkRopeMainStatsConverter;
import com.mrlonis.honkaistarrail.converters.PlanarSphereMainStatsConverter;
import com.mrlonis.honkaistarrail.converters.SubstatsConverter;
import com.mrlonis.honkaistarrail.enums.BodyMainStats;
import com.mrlonis.honkaistarrail.enums.FeetMainStats;
import com.mrlonis.honkaistarrail.enums.LinkRopeMainStats;
import com.mrlonis.honkaistarrail.enums.PlanarSphereMainStats;
import com.mrlonis.honkaistarrail.enums.Substats;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.springframework.boot.convert.ApplicationConversionService;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.web.PageableHandlerMethodArgumentResolver;
import org.springframework.format.FormatterRegistry;
import org.springframework.http.CacheControl;
import org.springframework.lang.NonNull;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

@Configuration
public class WebConfiguration extends WebMvcConfigurationSupport {

    @Override
    public void addResourceHandlers(@NonNull ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/api/images/**")
                .addResourceLocations("classpath:/images/")
                .setCacheControl(CacheControl.maxAge(2, TimeUnit.HOURS).cachePublic());

        registry.addResourceHandler("/api/v2/images/**")
                .addResourceLocations("classpath:/images/")
                .setCacheControl(CacheControl.maxAge(2, TimeUnit.HOURS).cachePublic());
    }

    @Override
    public void addArgumentResolvers(@NonNull List<HandlerMethodArgumentResolver> argumentResolvers) {
        argumentResolvers.add(new PageableHandlerMethodArgumentResolver());
    }

    @Override
    public void addFormatters(@NonNull FormatterRegistry registry) {
        ApplicationConversionService.configure(registry);
        registry.addConverter(String.class, BodyMainStats.class, new BodyMainStatsConverter());
        registry.addConverter(String.class, FeetMainStats.class, new FeetMainStatsConverter());
        registry.addConverter(String.class, LinkRopeMainStats.class, new LinkRopeMainStatsConverter());
        registry.addConverter(String.class, PlanarSphereMainStats.class, new PlanarSphereMainStatsConverter());
        registry.addConverter(String.class, Substats.class, new SubstatsConverter());
    }
}
