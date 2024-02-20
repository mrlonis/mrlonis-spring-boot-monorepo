package com.mrlonis.honkaistarrail.converters;

import com.mrlonis.honkaistarrail.enums.BodyMainStats;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;
import org.springframework.lang.NonNull;

import java.util.stream.Stream;

@Converter(autoApply = true)
public class BodyMainStatsConverter implements AttributeConverter<BodyMainStats, String>,
        org.springframework.core.convert.converter.Converter<String, BodyMainStats> {
    @Override
    public BodyMainStats convert(@NonNull String from) {
        return BodyMainStats.convertToEnumFromCsvValue(from);
    }

    @Override
    public String convertToDatabaseColumn(BodyMainStats stat) {
        if (stat == null) {
            return null;
        }
        return stat.getValue();
    }

    @Override
    public BodyMainStats convertToEntityAttribute(String value) {
        if (value == null) {
            return null;
        }

        return Stream.of(BodyMainStats.values())
                     .filter(c -> c.getValue().equals(value))
                     .findFirst()
                     .orElseThrow(() -> new IllegalArgumentException("Invalid Body Main Stat: " + value));
    }
}
