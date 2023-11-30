package com.mrlonis.honkaistarrail.dto;

import com.mrlonis.honkaistarrail.enums.LinkRopeMainStats;
import com.mrlonis.honkaistarrail.enums.PlanarSphereMainStats;
import lombok.Builder;
import lombok.Data;

import java.util.List;
import java.util.Map;
import java.util.UUID;

@Builder
@Data
public class OrnamentBreakdown implements IBreakdown {
    private UUID id;
    private String name;
    private String imageUrl;
    private String twoPieceSetEffect;
    private List<BreakdownCharacter> characters;
    private Map<PlanarSphereMainStats, List<BreakdownCharacter>> planarSphereStats;
    private Map<LinkRopeMainStats, List<BreakdownCharacter>> linkRopeStats;
}
