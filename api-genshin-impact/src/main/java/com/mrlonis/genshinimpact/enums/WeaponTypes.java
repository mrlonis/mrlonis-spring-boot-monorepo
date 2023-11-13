package com.mrlonis.genshinimpact.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import lombok.Getter;

public enum WeaponTypes {
    SWORD("Sword"), CLAYMORE("Claymore"), POLEARM("Polearm"), BOW("Bow"), CATALYST("Catalyst");

    @Getter(onMethod_ = @JsonValue)
    private final String value;

    private WeaponTypes(String label) {
        this.value = label;
    }

    @Override
    public String toString() {
        return this.getValue();
    }
}
