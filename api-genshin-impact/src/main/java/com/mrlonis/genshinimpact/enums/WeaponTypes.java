package com.mrlonis.genshinimpact.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import java.util.stream.Stream;
import lombok.Getter;

public enum WeaponTypes {
    SWORD("Sword"),
    CLAYMORE("Claymore"),
    POLEARM("Polearm"),
    BOW("Bow"),
    CATALYST("Catalyst");

    @Getter(onMethod_ = @JsonValue)
    private final String value;

    WeaponTypes(String label) {
        this.value = label;
    }

    public static WeaponTypes convertToEnumFromCsvValue(String csvValue) {
        if (csvValue == null) {
            return null;
        }

        return Stream.of(WeaponTypes.values())
                .filter(c -> c.getValue().equals(csvValue))
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Invalid Weapon Type: " + csvValue));
    }

    @Override
    public String toString() {
        return this.getValue();
    }
}
