package com.mrlonis.genshinimpact.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import java.util.stream.Stream;
import lombok.Getter;

public enum Substats {
    HEALTH_FLAT("HP"),
    HEALTH_PERCENT("HP%"),
    ATTACK_FLAT("ATK"),
    ATTACK_PERCENT("ATK%"),
    DEFENSE_FLAT("DEF"),
    DEFENSE_PERCENT("DEF%"),
    ENERGY_RECHARGE("Energy Recharge"),
    ELEMENTAL_MASTERY("Elemental Mastery"),
    CRITICAL_RATE("CRIT Rate"),
    CRITICAL_DAMAGE("CRIT DMG"),
    CRITICAL_RATE_AND_DAMAGE("CRIT Rate / CRIT DMG"),
    ATTACK_PERCENT_ELEMENTAL_MASTERY("ATK% / Elemental Mastery"),
    ELEMENTAL_MASTERY_ATTACK_PERCENT("Elemental Mastery / ATK%");

    @Getter(onMethod_ = @JsonValue)
    private final String value;

    Substats(String label) {
        this.value = label;
    }

    public static Substats convertToEnumFromCsvValue(String csvValue) {
        if (csvValue == null) {
            return null;
        }

        return Stream.of(Substats.values())
                .filter(c -> c.getValue().equals(csvValue))
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Invalid Substat: " + csvValue));
    }

    @Override
    public String toString() {
        return this.getValue();
    }
}
