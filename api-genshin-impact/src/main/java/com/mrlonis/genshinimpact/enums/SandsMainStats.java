package com.mrlonis.genshinimpact.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import lombok.Getter;

import java.util.stream.Stream;

public enum SandsMainStats {
    HEALTH_PERCENT("HP%"),
    ATTACK_PERCENT("ATK%"),
    DEFENSE_PERCENT("DEF%"),
    ENERGY_RECHARGE("Energy Recharge"),
    ELEMENTAL_MASTERY("Elemental Mastery");

    @Getter(onMethod_ = @JsonValue)
    private final String value;

    SandsMainStats(String label) {
        this.value = label;
    }

    public static SandsMainStats convertToEnumFromCsvValue(String csvValue) {
        if (csvValue == null) {
            return null;
        }

        return Stream.of(SandsMainStats.values())
                     .filter(c -> c.getValue().equals(csvValue))
                     .findFirst()
                     .orElseThrow(() -> new IllegalArgumentException("Invalid Sands Main Stat: " + csvValue));
    }

    @Override
    public String toString() {
        return this.getValue();
    }
}
