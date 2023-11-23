package com.mrlonis.genshinimpact.dto;

import com.mrlonis.genshinimpact.enums.Substats;
import lombok.Builder;
import lombok.Data;

import java.util.List;
import java.util.UUID;

@Builder
@Data
public class ArtifactBreakdownCharacter {
    private UUID id;
    private String name;
    private String imageUrl;
    private List<Substats> substats;
}
