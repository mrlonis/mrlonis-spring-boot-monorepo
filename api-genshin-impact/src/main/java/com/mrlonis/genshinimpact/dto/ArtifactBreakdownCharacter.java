package com.mrlonis.genshinimpact.dto;

import com.mrlonis.genshinimpact.enums.Substats;
import java.util.List;
import java.util.UUID;
import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class ArtifactBreakdownCharacter {
    private UUID id;
    private String name;
    private String imageUrl;
    private List<Substats> substats;
}
