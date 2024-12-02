package com.mrlonis.genshinimpact.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import java.util.stream.Stream;
import lombok.Getter;

public enum WeaponSecondaryStats {
    HEALTH_PERCENT("HP%", "HP%"),
    ATTACK_PERCENT("ATK%", "Atk%"),
    DEFENSE_PERCENT("DEF%", "Def%"),
    ENERGY_RECHARGE("Energy Recharge", "ER%"),
    ELEMENTAL_MASTERY("Elemental Mastery", "EM"),
    CRITICAL_RATE("CRIT Rate", "CrR%"),
    CRITICAL_DAMAGE("CRIT DMG", "CrD%"),
    PHYSICAL_DAMAGE_BONUS("Physical DMG Bonus", "Phys%");

    @Getter(onMethod_ = @JsonValue)
    private final String value;

    @Getter
    private final String csvValue;

    WeaponSecondaryStats(String label, String csvValue) {
        this.value = label;
        this.csvValue = csvValue;
    }

    public static WeaponSecondaryStats convertToEnumFromCsvValue(String csvValue) {
        if (csvValue == null) {
            return null;
        }

        return Stream.of(WeaponSecondaryStats.values())
                .filter(c -> c.getCsvValue().equals(csvValue))
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Invalid Weapon Secondary Stat: " + csvValue));
    }

    @Override
    public String toString() {
        return this.getValue();
    }
}
