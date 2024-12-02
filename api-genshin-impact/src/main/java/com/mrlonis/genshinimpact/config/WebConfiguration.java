package com.mrlonis.genshinimpact.config;

import com.mrlonis.genshinimpact.converters.CircletMainStatsConverter;
import com.mrlonis.genshinimpact.converters.GobletMainStatsConverter;
import com.mrlonis.genshinimpact.converters.SandsMainStatsConverter;
import com.mrlonis.genshinimpact.converters.SubstatsConverter;
import com.mrlonis.genshinimpact.converters.WeaponSecondaryStatsConverter;
import com.mrlonis.genshinimpact.converters.WeaponTypesConverter;
import com.mrlonis.genshinimpact.enums.CircletMainStats;
import com.mrlonis.genshinimpact.enums.GobletMainStats;
import com.mrlonis.genshinimpact.enums.SandsMainStats;
import com.mrlonis.genshinimpact.enums.Substats;
import com.mrlonis.genshinimpact.enums.WeaponSecondaryStats;
import com.mrlonis.genshinimpact.enums.WeaponTypes;
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
        registry.addConverter(String.class, CircletMainStats.class, new CircletMainStatsConverter());
        registry.addConverter(String.class, GobletMainStats.class, new GobletMainStatsConverter());
        registry.addConverter(String.class, SandsMainStats.class, new SandsMainStatsConverter());
        registry.addConverter(String.class, Substats.class, new SubstatsConverter());
        registry.addConverter(String.class, WeaponSecondaryStats.class, new WeaponSecondaryStatsConverter());
        registry.addConverter(String.class, WeaponTypes.class, new WeaponTypesConverter());
    }
}
