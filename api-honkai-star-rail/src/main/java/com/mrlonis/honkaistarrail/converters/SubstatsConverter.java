package com.mrlonis.honkaistarrail.converters;

import com.mrlonis.honkaistarrail.enums.Substats;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;
import org.springframework.lang.NonNull;

import java.util.stream.Stream;

@Converter(autoApply = true)
public class SubstatsConverter implements AttributeConverter<Substats, String>,
        org.springframework.core.convert.converter.Converter<String, Substats> {
    @Override
    public Substats convert(@NonNull String from) {
        return Substats.convertToEnumFromCsvValue(from);
    }

    @Override
    public String convertToDatabaseColumn(Substats stat) {
        if (stat == null) {
            return null;
        }
        return stat.getValue();
    }

    @Override
    public Substats convertToEntityAttribute(String value) {
        if (value == null) {
            return null;
        }

        return Stream.of(Substats.values())
                     .filter(c -> c.getValue().equals(value))
                     .findFirst()
                     .orElseThrow(() -> new IllegalArgumentException("Invalid Substat: " + value));
    }
}
