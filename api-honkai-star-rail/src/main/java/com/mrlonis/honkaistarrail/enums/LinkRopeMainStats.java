package com.mrlonis.honkaistarrail.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import java.util.stream.Stream;
import lombok.Getter;

public enum LinkRopeMainStats {
    BREAK_EFFECT("Break Effect"),
    ENERGY_REGENERATION_RATE("Energy Regen Rate"),
    HP_PERCENT("HP%"),
    ATK_PERCENT("ATK%"),
    DEF_PERCENT("DEF%");

    @Getter(onMethod_ = @JsonValue)
    private final String value;

    LinkRopeMainStats(String value) {
        this.value = value;
    }

    public static LinkRopeMainStats convertToEnumFromCsvValue(String csvValue) {
        if (csvValue == null) {
            return null;
        }

        return Stream.of(LinkRopeMainStats.values())
                .filter(c -> c.getValue().equals(csvValue))
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Invalid Link Rope Main Stat: " + csvValue));
    }

    @Override
    public String toString() {
        return this.value;
    }
}
