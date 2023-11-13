package com.mrlonis.genshinimpact.converters;

import com.mrlonis.genshinimpact.enums.Substats;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

import java.util.stream.Stream;

@Converter(autoApply = true)
public class SubstatsConverter implements AttributeConverter<Substats, String> {

    @Override
    public String convertToDatabaseColumn(Substats substats) {
        if (substats == null) {
            return null;
        }
        return substats.getValue();
    }

    @Override
    public Substats convertToEntityAttribute(String value) {
        if (value == null) {
            return null;
        }

        return Stream.of(Substats.values())
                     .filter(c -> c.getValue().equals(value))
                     .findFirst()
                     .orElseThrow(IllegalArgumentException::new);
    }
}
