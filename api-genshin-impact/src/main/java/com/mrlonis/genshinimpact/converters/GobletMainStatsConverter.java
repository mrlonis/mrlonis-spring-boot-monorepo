package com.mrlonis.genshinimpact.converters;

import com.mrlonis.genshinimpact.enums.GobletMainStats;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

import java.util.stream.Stream;

@Converter(autoApply = true)
public class GobletMainStatsConverter implements AttributeConverter<GobletMainStats, String> {

    public static GobletMainStats convertToEntityAttributeFromCsvValue(String csvValue) {
        if (csvValue == null) {
            return null;
        }

        return Stream.of(GobletMainStats.values())
                     .filter(c -> c.getCsvValue().equals(csvValue))
                     .findFirst()
                     .orElse(null);
    }

    @Override
    public String convertToDatabaseColumn(GobletMainStats gobletMainStats) {
        if (gobletMainStats == null) {
            return null;
        }
        return gobletMainStats.getValue();
    }

    @Override
    public GobletMainStats convertToEntityAttribute(String value) {
        if (value == null) {
            return null;
        }

        return Stream.of(GobletMainStats.values())
                     .filter(c -> c.getValue().equals(value))
                     .findFirst()
                     .orElseThrow(IllegalArgumentException::new);
    }
}
