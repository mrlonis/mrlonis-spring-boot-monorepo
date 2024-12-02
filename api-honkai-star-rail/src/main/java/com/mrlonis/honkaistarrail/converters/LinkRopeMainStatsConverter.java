package com.mrlonis.honkaistarrail.converters;

import com.mrlonis.honkaistarrail.enums.LinkRopeMainStats;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;
import java.util.stream.Stream;
import org.springframework.lang.NonNull;

@Converter(autoApply = true)
public class LinkRopeMainStatsConverter
        implements AttributeConverter<LinkRopeMainStats, String>,
                org.springframework.core.convert.converter.Converter<String, LinkRopeMainStats> {
    @Override
    public LinkRopeMainStats convert(@NonNull String from) {
        return LinkRopeMainStats.convertToEnumFromCsvValue(from);
    }

    @Override
    public String convertToDatabaseColumn(LinkRopeMainStats stat) {
        if (stat == null) {
            return null;
        }
        return stat.getValue();
    }

    @Override
    public LinkRopeMainStats convertToEntityAttribute(String value) {
        if (value == null) {
            return null;
        }

        return Stream.of(LinkRopeMainStats.values())
                .filter(c -> c.getValue().equals(value))
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Invalid Link Rope Main Stat: " + value));
    }
}
