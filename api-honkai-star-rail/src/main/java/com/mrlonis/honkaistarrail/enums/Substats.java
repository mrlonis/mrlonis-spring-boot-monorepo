package com.mrlonis.honkaistarrail.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import lombok.Getter;

import java.util.stream.Stream;

public enum Substats {
    HP("HP"),
    HP_PERCENT("HP%"),
    ATK("ATK"),
    ATK_PERCENT("ATK%"),
    DEF("DEF"),
    DEF_PERCENT("DEF%"),
    SPEED("Speed"),
    CRIT_RATE("CRIT Rate"),
    CRIT_DAMAGE("CRIT DMG"),
    CRIT_RATE_CRIT_DAMAGE("CRIT Rate / CRIT DMG"),
    EFFECT_HIT_RATE("Effect Hit Rate"),
    EFFECT_RESISTANCE("Effect Res"),
    BREAK_EFFECT("Break Effect"),
    ANY("Any");

    @Getter(onMethod_ = @JsonValue)
    private final String value;

    Substats(String value) {
        this.value = value;
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
        return this.value;
    }
}
