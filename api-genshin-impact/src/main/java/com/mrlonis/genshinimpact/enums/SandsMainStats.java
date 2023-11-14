package com.mrlonis.genshinimpact.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import lombok.Getter;

public enum SandsMainStats {
    HEALTH_PERCENT("HP%"),
    ATTACK_PERCENT("ATK%"),
    DEFENSE_PERCENT("DEF%"),
    ENERGY_RECHARGE("Energy Recharge"),
    ELEMENTAL_MASTERY("Elemental Mastery");

    @Getter(onMethod_ = @JsonValue)
    private final String value;

    private SandsMainStats(String label) {
        this.value = label;
    }

    @Override
    public String toString() {
        return this.getValue();
    }
}
