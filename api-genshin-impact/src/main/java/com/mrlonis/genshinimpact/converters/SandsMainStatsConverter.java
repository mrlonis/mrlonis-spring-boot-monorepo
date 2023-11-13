package com.mrlonis.genshinimpact.converters;

import com.mrlonis.genshinimpact.enums.SandsMainStats;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

import java.util.stream.Stream;

@Converter(autoApply = true)
public class SandsMainStatsConverter implements AttributeConverter<SandsMainStats, String> {

    @Override
    public String convertToDatabaseColumn(SandsMainStats sandsMainStats) {
        if (sandsMainStats == null) {
            return null;
        }
        return sandsMainStats.getValue();
    }

    @Override
    public SandsMainStats convertToEntityAttribute(String value) {
        if (value == null) {
            return null;
        }

        return Stream.of(SandsMainStats.values())
                     .filter(c -> c.getValue().equals(value))
                     .findFirst()
                     .orElseThrow(IllegalArgumentException::new);
    }
}
