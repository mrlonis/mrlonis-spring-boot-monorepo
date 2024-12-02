package com.mrlonis.honkaistarrail.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import java.util.stream.Stream;
import lombok.Getter;

public enum FeetMainStats {
    HP_PERCENT("HP%"),
    ATK_PERCENT("ATK%"),
    DEF_PERCENT("DEF%"),
    SPEED("Speed");

    @Getter(onMethod_ = @JsonValue)
    private final String value;

    FeetMainStats(String value) {
        this.value = value;
    }

    public static FeetMainStats convertToEnumFromCsvValue(String csvValue) {
        if (csvValue == null) {
            return null;
        }

        return Stream.of(FeetMainStats.values())
                .filter(c -> c.getValue().equals(csvValue))
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Invalid Feet Main Stat: " + csvValue));
    }

    @Override
    public String toString() {
        return this.value;
    }
}
