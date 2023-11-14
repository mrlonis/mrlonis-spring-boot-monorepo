package com.mrlonis.genshinimpact.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import lombok.Getter;

public enum CircletMainStats {
    HEALTH_PERCENT("HP%"),
    ATTACK_PERCENT("ATK%"),
    DEFENSE_PERCENT("DEF%"),
    ELEMENTAL_MASTERY("Elemental Mastery"),
    CRITICAL_RATE("CRIT Rate"),
    CRITICAL_DAMAGE("CRIT DMG"),
    CRITICAL_RATE_CRITICAL_DAMAGE("CRIT Rate / CRIT DMG"),
    HEALING_BONUS("Healing Bonus"),
    CRITICAL_DAMAGE_ATTACK_PERCENT("CRIT DMG / ATK%"),
    ELEMENTAL_MASTERY_CRITICAL_RATE_CRITICAL_DAMAGE("Elemental Mastery / CRIT Rate / CRIT DMG");

    @Getter(onMethod_ = @JsonValue)
    private final String value;

    private CircletMainStats(String label) {
        this.value = label;
    }

    @Override
    public String toString() {
        return this.getValue();
    }
}
