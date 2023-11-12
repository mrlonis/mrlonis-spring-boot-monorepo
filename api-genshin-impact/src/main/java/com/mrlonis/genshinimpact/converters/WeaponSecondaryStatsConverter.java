package com.mrlonis.genshinimpact.converters;

import com.mrlonis.genshinimpact.enums.WeaponSecondaryStats;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;
import lombok.extern.slf4j.Slf4j;

import java.util.stream.Stream;

@Converter(autoApply = true)
@Slf4j
public class WeaponSecondaryStatsConverter  implements AttributeConverter<WeaponSecondaryStats, String> {

    @Override
    public String convertToDatabaseColumn(WeaponSecondaryStats enumValue) {
        if (enumValue == null) {
            return null;
        }
        return enumValue.getValue();
    }

    @Override
    public WeaponSecondaryStats convertToEntityAttribute(String value) {
        log.info("convertToEntityAttribute: {}", value);
        if (value == null) {
            return null;
        }

        return Stream.of(WeaponSecondaryStats.values())
                     .filter(c -> c.getValue().equals(value))
                     .findFirst()
                     .orElse(null);
    }

    public static WeaponSecondaryStats convertToEntityAttributeFromCsvValue(String csvValue) {
        if (csvValue == null) {
            return null;
        }

        return Stream.of(WeaponSecondaryStats.values())
                     .filter(c -> c.getCsvValue().equals(csvValue))
                     .findFirst()
                     .orElse(null);
    }
}
