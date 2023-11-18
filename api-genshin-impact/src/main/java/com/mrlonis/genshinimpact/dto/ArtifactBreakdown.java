package com.mrlonis.genshinimpact.dto;

import com.mrlonis.genshinimpact.entities.Character;
import com.mrlonis.genshinimpact.enums.CircletMainStats;
import com.mrlonis.genshinimpact.enums.GobletMainStats;
import com.mrlonis.genshinimpact.enums.SandsMainStats;
import com.mrlonis.genshinimpact.enums.Substats;
import lombok.Builder;
import lombok.Data;

import java.util.List;
import java.util.Map;
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
    private Map<SandsMainStats, List<Character>> sandsStats;
    private Map<GobletMainStats, List<Character>> gobletStats;
    private Map<CircletMainStats, List<Character>> circletStats;
    private Map<Substats, List<Character>> substats;
}
