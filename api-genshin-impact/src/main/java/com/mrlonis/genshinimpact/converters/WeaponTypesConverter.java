package com.mrlonis.genshinimpact.converters;

import com.mrlonis.genshinimpact.enums.WeaponTypes;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;
import java.util.stream.Stream;
import lombok.NonNull;
import lombok.extern.slf4j.Slf4j;

@Converter(autoApply = true)
@Slf4j
public class WeaponTypesConverter
        implements AttributeConverter<WeaponTypes, String>,
                org.springframework.core.convert.converter.Converter<String, WeaponTypes> {
    @Override
    public WeaponTypes convert(@NonNull String from) {
        log.info("WeaponTypesConverter.convert");
        return WeaponTypes.convertToEnumFromCsvValue(from);
    }

    @Override
    public String convertToDatabaseColumn(WeaponTypes enumValue) {
        if (enumValue == null) {
            return null;
        }
        return enumValue.getValue();
    }

    @Override
    public WeaponTypes convertToEntityAttribute(String value) {
        if (value == null) {
            return null;
        }

        return Stream.of(WeaponTypes.values())
                .filter(c -> c.getValue().equals(value))
                .findFirst()
                .orElseThrow(IllegalArgumentException::new);
    }
}
