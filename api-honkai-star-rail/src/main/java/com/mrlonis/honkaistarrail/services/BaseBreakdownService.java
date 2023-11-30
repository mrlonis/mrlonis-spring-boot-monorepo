package com.mrlonis.honkaistarrail.services;

import com.mrlonis.honkaistarrail.dto.IBreakdown;
import com.mrlonis.honkaistarrail.entities.Character;
import com.mrlonis.honkaistarrail.enums.Substats;
import com.mrlonis.honkaistarrail.exceptions.NotFoundException;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public abstract class BaseBreakdownService<T extends IBreakdown> {

    public abstract T getBreakdown(UUID id, int depth) throws NotFoundException;

    List<Substats> buildSubstats(Character character) {
        List<Substats> substats = new ArrayList<>();
        if (character.getSubstatOne() != null) {
            substats.add(character.getSubstatOne());
        }
        if (character.getSubstatTwo() != null) {
            substats.add(character.getSubstatTwo());
        }
        if (character.getSubstatThree() != null) {
            substats.add(character.getSubstatThree());
        }
        if (character.getSubstatFour() != null) {
            substats.add(character.getSubstatFour());
        }
        return substats;
    }
}
