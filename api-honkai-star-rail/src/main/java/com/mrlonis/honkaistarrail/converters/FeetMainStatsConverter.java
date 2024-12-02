package com.mrlonis.honkaistarrail.converters;

import com.mrlonis.honkaistarrail.enums.FeetMainStats;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;
import java.util.stream.Stream;
import org.springframework.lang.NonNull;

@Converter(autoApply = true)
public class FeetMainStatsConverter
        implements AttributeConverter<FeetMainStats, String>,
                org.springframework.core.convert.converter.Converter<String, FeetMainStats> {
    @Override
    public FeetMainStats convert(@NonNull String from) {
        return FeetMainStats.convertToEnumFromCsvValue(from);
    }

    @Override
    public String convertToDatabaseColumn(FeetMainStats stat) {
        if (stat == null) {
            return null;
        }
        return stat.getValue();
    }

    @Override
    public FeetMainStats convertToEntityAttribute(String value) {
        if (value == null) {
            return null;
        }

        return Stream.of(FeetMainStats.values())
                .filter(c -> c.getValue().equals(value))
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Invalid Feet Main Stat: " + value));
    }
}
