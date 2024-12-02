package com.mrlonis.honkaistarrail.dto;

import com.mrlonis.honkaistarrail.enums.BodyMainStats;
import com.mrlonis.honkaistarrail.enums.FeetMainStats;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class RelicBreakdown implements IBreakdown {
    private UUID id;
    private String name;
    private String imageUrl;
    private String twoPieceSetEffect;
    private String fourPieceSetEffect;
    private List<BreakdownCharacter> characters;
    private Map<BodyMainStats, List<BreakdownCharacter>> bodyStats;
    private Map<FeetMainStats, List<BreakdownCharacter>> feetStats;
}
