package com.mrlonis.genshinimpact.converters;

import com.mrlonis.genshinimpact.enums.WeaponTypes;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

import java.util.stream.Stream;

@Converter(autoApply = true)
public class WeaponTypesConverter implements AttributeConverter<WeaponTypes, String> {

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
