package com.mrlonis.genshinimpact.dto;

import lombok.Builder;
import lombok.Data;

import java.util.UUID;

@Builder
@Data
public class ArtifactBreakdownCharacter {
    private UUID id;
    private String name;
    private String imageUrl;
}
