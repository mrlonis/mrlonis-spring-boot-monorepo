package com.mrlonis.genshinimpact.converters;

import com.mrlonis.genshinimpact.enums.WeaponSecondaryStats;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;
import lombok.NonNull;
import lombok.extern.slf4j.Slf4j;

import java.util.stream.Stream;

@Converter(autoApply = true)
@Slf4j
public class WeaponSecondaryStatsConverter implements AttributeConverter<WeaponSecondaryStats, String>,
        org.springframework.core.convert.converter.Converter<String, WeaponSecondaryStats> {
    @Override
    public WeaponSecondaryStats convert(@NonNull String from) {
        return WeaponSecondaryStats.convertToEnumFromCsvValue(from);
    }

    @Override
    public String convertToDatabaseColumn(WeaponSecondaryStats enumValue) {
        if (enumValue == null) {
            return null;
        }
        return enumValue.getValue();
    }

    @Override
    public WeaponSecondaryStats convertToEntityAttribute(String value) {
        if (value == null) {
            return null;
        }

        return Stream.of(WeaponSecondaryStats.values())
                     .filter(c -> c.getValue().equals(value))
                     .findFirst()
                     .orElse(null);
    }
}
