package com.mrlonis.genshinimpact.converters;

import com.mrlonis.genshinimpact.enums.CircletMainStats;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

import java.util.stream.Stream;

@Converter(autoApply = true)
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
        if (value == null) {
            return null;
        }

        return Stream.of(CircletMainStats.values())
                     .filter(c -> c.getValue().equals(value))
                     .findFirst()
                     .orElseThrow(IllegalArgumentException::new);
    }
}
