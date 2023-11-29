package com.mrlonis.honkaistarrail.dto;

import com.mrlonis.honkaistarrail.enums.Substats;
import lombok.Builder;
import lombok.Data;

import java.util.List;
import java.util.UUID;

@Builder
@Data
public class BreakdownCharacter {
    private UUID id;
    private String name;
    private String imageUrl;
    private List<Substats> substats;
}
