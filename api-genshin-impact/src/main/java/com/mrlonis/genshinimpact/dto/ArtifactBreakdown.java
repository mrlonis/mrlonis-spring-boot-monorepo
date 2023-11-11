package com.mrlonis.genshinimpact.dto;

import com.mrlonis.genshinimpact.enums.CircletMainStats;
import com.mrlonis.genshinimpact.enums.GobletMainStats;
import com.mrlonis.genshinimpact.enums.SandsMainStats;
import com.mrlonis.genshinimpact.enums.Substats;
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
    private List<SandsMainStats> sandsStats;
    private List<GobletMainStats> gobletStats;
    private List<CircletMainStats> circletStats;
    private List<Substats> substats;
}
