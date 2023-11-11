package com.mrlonis.genshinimpact.enums;

import lombok.Getter;

@Getter
public enum GobletMainStats {
    HEALTH_PERCENT("HP%"), ATTACK_PERCENT("ATK%"), DEFENSE_PERCENT("DEF%"), ELEMENTAL_MASTERY("Elemental Mastery"),
    PYRO_DAMAGE_BONUS("Pyro DMG Bonus"), ELECTRO_DAMAGE_BONUS("Electro DMG Bonus"), CRYO_DAMAGE_BONUS("Cryo DMG Bonus"),
    HYDRO_DAMAGE_BONUS("Hydro DMG Bonus"), ANEMO_DAMAGE_BONUS("Anemo DMG Bonus"), GEO_DAMAGE_BONUS("Geo DMG Bonus"),
    DENDRO_DAMAGE_BONUS("Dendro DMG Bonus"), PHYSICAL_DAMAGE_BONUS("Physical DMG Bonus");

    private final String value;

    private GobletMainStats(String label) {
        this.value = label;
    }
}
