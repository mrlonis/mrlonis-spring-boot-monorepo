package com.mrlonis.genshinimpact.dto;

import lombok.Builder;
import lombok.Data;

import java.util.List;
import java.util.UUID;

@Builder
@Data
public class ArtifactBreakdown {
    private UUID id;
    private String name;
    private String imageUrl;
    private String onePieceSetEffect;
    private String twoPieceSetEffect;
    private String fourPieceSetEffect;
    private List<String> sandsStats;
    private List<String> gobletStats;
    private List<String> circletStats;
    private List<String> substats;
}
