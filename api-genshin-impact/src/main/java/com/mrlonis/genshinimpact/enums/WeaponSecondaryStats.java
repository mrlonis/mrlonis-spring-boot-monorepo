package com.mrlonis.genshinimpact.enums;

import lombok.Getter;

@Getter
public enum WeaponSecondaryStats {
    HEALTH_PERCENT("HP%", "HP%"),
    ATTACK_PERCENT("ATK%", "Atk%"),
    DEFENSE_PERCENT("DEF%", "Def%"),
    ENERGY_RECHARGE("Energy Recharge", "ER%"),
    ELEMENTAL_MASTERY("Elemental Mastery", "EM"),
    CRITICAL_RATE("CRIT Rate", "CrR%"),
    CRITICAL_DAMAGE("CRIT DMG", "CrD%"),
    PHYSICAL_DAMAGE_BONUS("Physical DMG Bonus", "Phys%");

    private final String value;
    private final String csvValue;

    private WeaponSecondaryStats(String label, String csvValue) {
        this.value = label;
        this.csvValue = csvValue;
    }

    @Override
    public String toString() {
        return this.getValue();
    }
}
