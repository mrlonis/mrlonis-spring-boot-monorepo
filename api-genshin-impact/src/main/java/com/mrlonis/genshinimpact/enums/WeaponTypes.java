package com.mrlonis.genshinimpact.enums;

import lombok.Getter;

@Getter
public enum WeaponTypes {
    SWORD("Sword"), CLAYMORE("Claymore"), POLEARM("Polearm"), BOW("Bow"), CATALYST("Catalyst");

    private final String value;

    private WeaponTypes(String label) {
        this.value = label;
    }

    @Override
    public String toString() {
        return this.getValue();
    }
}
