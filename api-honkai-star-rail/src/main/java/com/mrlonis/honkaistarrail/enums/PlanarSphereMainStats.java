package com.mrlonis.honkaistarrail.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import lombok.Getter;

import java.util.stream.Stream;

public enum PlanarSphereMainStats {
    HP_PERCENT("HP%", "HP%"),
    ATK_PERCENT("ATK%", "ATK%"),
    DEF_PERCENT("DEF%", "DEF%"),
    PHYSICAL_DAMAGE_BONUS("Physical DMG Bonus", "Physical DMG"),
    FIRE_DAMAGE_BONUS("Fire DMG Bonus", "Fire DMG"),
    ICE_DAMAGE_BONUS("Ice DMG Bonus", "Ice DMG"),
    LIGHTNING_DAMAGE_BONUS("Lightning DMG Bonus", "Lightning DMG"),
    WIND_DAMAGE_BONUS("Wind DMG Bonus", "Wind DMG"),
    QUANTUM_DAMAGE_BONUS("Quantum DMG Bonus", "Quantum DMG"),
    IMAGINARY_DAMAGE_BONUS("Imaginary DMG Bonus", "Imaginary DMG"),
    DEF_PERCENT_ICE_DAMAGE_BONUS("DEF% / Ice DMG Bonus", "DEF% / Ice DMG"),
    HP_PERCENT_DEF_PERCENT("HP% / DEF%", "HP% / DEF%"),
    ANY("Any", "Any");

    @Getter(onMethod_ = @JsonValue)
    private final String value;

    @Getter
    private final String csvValue;

    PlanarSphereMainStats(String value, String csvValue) {
        this.value = value;
        this.csvValue = csvValue;
    }

    public static PlanarSphereMainStats convertToEnumFromCsvValue(String csvValue) {
        if (csvValue == null) {
            return null;
        }

        return Stream.of(PlanarSphereMainStats.values())
                     .filter(c -> c.getCsvValue().equals(csvValue))
                     .findFirst()
                     .orElseThrow(() -> new IllegalArgumentException("Invalid Planar Sphere Main Stat: " + csvValue));
    }

    @Override
    public String toString() {
        return this.value;
    }
}
