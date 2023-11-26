package com.mrlonis.honkaistarrail.converters;

import com.mrlonis.honkaistarrail.enums.PlanarSphereMainStats;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;
import lombok.NonNull;

import java.util.stream.Stream;

@Converter(autoApply = true)
public class PlanarSphereMainStatsConverter implements AttributeConverter<PlanarSphereMainStats, String>,
        org.springframework.core.convert.converter.Converter<String, PlanarSphereMainStats> {
    @Override
    public PlanarSphereMainStats convert(@NonNull String from) {
        return PlanarSphereMainStats.convertToEnumFromCsvValue(from);
    }

    @Override
    public String convertToDatabaseColumn(PlanarSphereMainStats stat) {
        if (stat == null) {
            return null;
        }
        return stat.getValue();
    }

    @Override
    public PlanarSphereMainStats convertToEntityAttribute(String value) {
        if (value == null) {
            return null;
        }

        return Stream.of(PlanarSphereMainStats.values())
                     .filter(c -> c.getValue().equals(value))
                     .findFirst()
                     .orElseThrow(() -> new IllegalArgumentException("Invalid Planar Sphere Main Stat: " + value));
    }
}
