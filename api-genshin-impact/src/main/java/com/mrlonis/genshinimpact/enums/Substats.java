package com.mrlonis.genshinimpact.enums;

import lombok.Getter;

@Getter
public enum Substats {
    HEALTH_FLAT("HP"), HEALTH_PERCENT("HP%"), ATTACK_FLAT("ATK"), ATTACK_PERCENT("ATK%"), DEFENSE_FLAT("DEF"),
    DEFENSE_PERCENT("DEF%"), ENERGY_RECHARGE("Energy Recharge"), ELEMENTAL_MASTERY("Elemental Mastery"),
    CRITICAL_RATE("CRIT Rate"), CRITICAL_DAMAGE("CRIT DMG"), CRITICAL_RATE_CRITICAL_DAMAGE("CRIT Rate / CRIT DMG");

    private final String value;

    private Substats(String label) {
        this.value = label;
    }

    @Override
    public String toString() {
        return this.getValue();
    }
}
