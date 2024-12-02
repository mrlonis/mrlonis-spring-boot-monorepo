package com.mrlonis.genshinimpact.converters;

import com.mrlonis.genshinimpact.enums.GobletMainStats;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;
import java.util.stream.Stream;
import lombok.NonNull;

@Converter(autoApply = true)
public class GobletMainStatsConverter
        implements AttributeConverter<GobletMainStats, String>,
                org.springframework.core.convert.converter.Converter<String, GobletMainStats> {
    @Override
    public GobletMainStats convert(@NonNull String from) {
        return GobletMainStats.convertToEnumFromCsvValue(from);
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
