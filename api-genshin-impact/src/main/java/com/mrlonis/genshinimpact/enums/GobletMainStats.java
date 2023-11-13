package com.mrlonis.genshinimpact.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import lombok.Getter;

public enum GobletMainStats {
    HEALTH_PERCENT("HP%", "HP%"), ATTACK_PERCENT("ATK%", "ATK%"), DEFENSE_PERCENT("DEF%", "DEF%"), ELEMENTAL_MASTERY("Elemental Mastery", "Elemental Mastery"),
    PYRO_DAMAGE_BONUS("Pyro DMG Bonus", "Pyro DMG"), ELECTRO_DAMAGE_BONUS("Electro DMG Bonus", "Electro DMG"), CRYO_DAMAGE_BONUS("Cryo DMG Bonus", "Cryo DMG"),
    HYDRO_DAMAGE_BONUS("Hydro DMG Bonus", "Hydro DMG"), ANEMO_DAMAGE_BONUS("Anemo DMG Bonus", "Anemo DMG"), GEO_DAMAGE_BONUS("Geo DMG Bonus", "Geo DMG"),
    DENDRO_DAMAGE_BONUS("Dendro DMG Bonus", "Dendro DMG"), PHYSICAL_DAMAGE_BONUS("Physical DMG Bonus", "Physical DMG");

    @Getter(onMethod_ = @JsonValue)
    private final String value;
    @Getter
    private final String csvValue;

    private GobletMainStats(String label, String csvValue) {
        this.value = label;
        this.csvValue = csvValue;
    }

    @Override
    public String toString() {
        return this.getValue();
    }
}
