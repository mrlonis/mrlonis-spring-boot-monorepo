package com.mrlonis.genshinimpact.enums;

import lombok.Getter;

@Getter
public enum CircletMainStats {
    HEALTH_PERCENT("HP%"), ATTACK_PERCENT("ATK%"), DEFENSE_PERCENT("DEF%"), ELEMENTAL_MASTERY("Elemental Mastery"),
    CRITICAL_RATE("CRIT Rate"), CRITICAL_DAMAGE("CRIT DMG"), CRITICAL_RATE_CRITICAL_DAMAGE("CRIT Rate / CRIT DMG"),
    HEALING_BONUS("Healing Bonus");

    private final String value;

    private CircletMainStats(String label) {
        this.value = label;
    }
}
