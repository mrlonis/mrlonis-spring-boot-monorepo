package com.mrlonis.genshinimpact.enums;

import lombok.Getter;

@Getter
public enum SandsMainStats {
    HEALTH_PERCENT("HP%"), ATTACK_PERCENT("ATK%"), DEFENSE_PERCENT("DEF%"), ENERGY_RECHARGE("Energy Recharge"),
    ELEMENTAL_MASTERY("Elemental Mastery");

    private final String value;

    private SandsMainStats(String label) {
        this.value = label;
    }
}
