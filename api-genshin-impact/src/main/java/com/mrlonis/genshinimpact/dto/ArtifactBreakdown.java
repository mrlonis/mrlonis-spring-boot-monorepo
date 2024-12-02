package com.mrlonis.genshinimpact.dto;

import com.mrlonis.genshinimpact.enums.CircletMainStats;
import com.mrlonis.genshinimpact.enums.GobletMainStats;
import com.mrlonis.genshinimpact.enums.SandsMainStats;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class ArtifactBreakdown {
    private UUID id;
    private String name;
    private String imageUrl;
    private String onePieceSetEffect;
    private String twoPieceSetEffect;
    private String fourPieceSetEffect;
    private List<ArtifactBreakdownCharacter> characters;
    private Map<SandsMainStats, List<ArtifactBreakdownCharacter>> sandsStats;
    private Map<GobletMainStats, List<ArtifactBreakdownCharacter>> gobletStats;
    private Map<CircletMainStats, List<ArtifactBreakdownCharacter>> circletStats;
}
