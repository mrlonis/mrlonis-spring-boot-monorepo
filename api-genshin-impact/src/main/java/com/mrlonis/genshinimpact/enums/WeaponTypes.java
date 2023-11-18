package com.mrlonis.genshinimpact.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import lombok.Getter;

import java.util.stream.Stream;

public enum WeaponTypes {
    SWORD("Sword"), CLAYMORE("Claymore"), POLEARM("Polearm"), BOW("Bow"), CATALYST("Catalyst");

    @Getter(onMethod_ = @JsonValue)
    private final String value;

    private WeaponTypes(String label) {
        this.value = label;
    }

    public static WeaponTypes convertToEnumFromCsvValue(String csvValue) {
        if (csvValue == null) {
            return null;
        }

        return Stream.of(WeaponTypes.values()).filter(c -> c.getValue().equals(csvValue)).findFirst().orElse(null);
    }

    @Override
    public String toString() {
        return this.getValue();
    }
}
