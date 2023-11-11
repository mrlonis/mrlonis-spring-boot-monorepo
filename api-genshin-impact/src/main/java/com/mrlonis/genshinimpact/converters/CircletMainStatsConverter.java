package com.mrlonis.genshinimpact.converters;

import com.mrlonis.genshinimpact.enums.CircletMainStats;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;
import lombok.extern.slf4j.Slf4j;

import java.util.stream.Stream;

@Converter(autoApply = true)
@Slf4j
public class CircletMainStatsConverter implements AttributeConverter<CircletMainStats, String> {

    @Override
    public String convertToDatabaseColumn(CircletMainStats circletMainStats) {
        if (circletMainStats == null) {
            return null;
        }
        return circletMainStats.getValue();
    }

    @Override
    public CircletMainStats convertToEntityAttribute(String value) {
        log.info("CircletMainStatsConverter: convertToEntityAttribute: {}", value);
        if (value == null) {
            return null;
        }

        return Stream.of(CircletMainStats.values())
                     .filter(c -> c.getValue().equals(value))
                     .findFirst()
                     .orElseThrow(IllegalArgumentException::new);
    }
}
