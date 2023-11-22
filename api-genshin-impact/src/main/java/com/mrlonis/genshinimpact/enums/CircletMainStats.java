package com.mrlonis.genshinimpact.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import lombok.Getter;

import java.util.stream.Stream;

public enum CircletMainStats {
    HEALTH_PERCENT("HP%"),
    ATTACK_PERCENT("ATK%"),
    DEFENSE_PERCENT("DEF%"),
    ELEMENTAL_MASTERY("Elemental Mastery"),
    CRITICAL_RATE("CRIT Rate"),
    CRITICAL_DAMAGE("CRIT DMG"),
    HEALING_BONUS("Healing Bonus"),
    CRITICAL_RATE_AND_DAMAGE("CRIT Rate / CRIT DMG");

    @Getter(onMethod_ = @JsonValue)
    private final String value;

    CircletMainStats(String label) {
        this.value = label;
    }

    public static CircletMainStats convertToEnumFromCsvValue(String csvValue) {
        if (csvValue == null) {
            return null;
        }

        return Stream.of(CircletMainStats.values())
                     .filter(c -> c.getValue().equals(csvValue))
                     .findFirst()
                     .orElseThrow(() -> new IllegalArgumentException("Invalid Circlet Main Stat: " + csvValue));
    }

    @Override
    public String toString() {
        return this.getValue();
    }
}
