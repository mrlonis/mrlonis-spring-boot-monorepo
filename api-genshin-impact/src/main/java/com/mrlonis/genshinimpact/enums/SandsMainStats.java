package com.mrlonis.genshinimpact.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import lombok.Getter;

public enum SandsMainStats {
    HEALTH_PERCENT("HP%"),
    ATTACK_PERCENT("ATK%"),
    DEFENSE_PERCENT("DEF%"),
    ENERGY_RECHARGE("Energy Recharge"),
    ELEMENTAL_MASTERY("Elemental Mastery"),
    ATTACK_PERCENT_ENERGY_RECHARGE("ATK% / Energy Recharge"),
    ELEMENTAL_MASTERY_ATTACK_PERCENT_ENERGY_RECHARGE("Elemental Mastery / ATK% / Energy Recharge"),
    ENERGY_RECHARGE_ATTACK_PERCENT("Energy Recharge / ATK%");

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
