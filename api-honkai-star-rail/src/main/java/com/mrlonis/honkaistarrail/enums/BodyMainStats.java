package com.mrlonis.honkaistarrail.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import java.util.stream.Stream;
import lombok.Getter;

public enum BodyMainStats {
    HP_PERCENT("HP%"),
    ATK_PERCENT("ATK%"),
    DEF_PERCENT("DEF%"),
    CRITICAL_RATE("CRIT Rate"),
    CRITICAL_DAMAGE("CRIT DMG"),
    CRITICAL_RATE_AND_DAMAGE("CRIT Rate / CRIT DMG"),
    OUTGOING_HEALING_BOOST("Outgoing Healing Boost"),
    EFFECT_HIT_RATE("Effect Hit Rate"),
    ANY("Any");

    @Getter(onMethod_ = @JsonValue)
    private final String value;

    BodyMainStats(String value) {
        this.value = value;
    }

    public static BodyMainStats convertToEnumFromCsvValue(String csvValue) {
        if (csvValue == null) {
            return null;
        }

        return Stream.of(BodyMainStats.values())
                .filter(c -> c.getValue().equals(csvValue))
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Invalid Body Main Stat: " + csvValue));
    }

    @Override
    public String toString() {
        return this.value;
    }
}
