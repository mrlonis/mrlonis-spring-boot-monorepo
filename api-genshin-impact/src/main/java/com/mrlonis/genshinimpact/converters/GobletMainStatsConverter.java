package com.mrlonis.genshinimpact.converters;

import com.mrlonis.genshinimpact.enums.GobletMainStats;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;
import lombok.extern.slf4j.Slf4j;

import java.util.stream.Stream;

@Converter(autoApply = true)
@Slf4j
public class GobletMainStatsConverter implements AttributeConverter<GobletMainStats, String> {

    @Override
    public String convertToDatabaseColumn(GobletMainStats gobletMainStats) {
        if (gobletMainStats == null) {
            return null;
        }
        return gobletMainStats.getValue();
    }

    @Override
    public GobletMainStats convertToEntityAttribute(String value) {
        log.info("convertToEntityAttribute: {}", value);
        if (value == null) {
            return null;
        }

        return Stream.of(GobletMainStats.values())
                     .filter(c -> c.getValue().equals(value))
                     .findFirst()
                     .orElseThrow(IllegalArgumentException::new);
    }
}
