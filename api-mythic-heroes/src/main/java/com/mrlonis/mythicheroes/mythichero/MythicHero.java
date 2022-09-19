package com.mrlonis.mythicheroes.mythichero;

import com.mrlonis.mythicheroes.faction.Faction;
import com.mrlonis.mythicheroes.rarity.Rarity;
import com.mrlonis.mythicheroes.type.Type;
import com.mrlonis.types.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.util.UUID;

@Builder
@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "MythicHeroes_Heroes")
public class MythicHero implements BaseEntity, Serializable {
    @Id
    @GeneratedValue
    @Column(name = "id")
    private UUID id;

    @Column(name = "name")
    private String name;

    @Column(name = "imageUrl")
    private String imageUrl;

    @Column(name = "imageSourceUrl")
    private String imageSourceUrl;

    @Column(name = "factionId")
    private UUID factionId;

    @Column(name = "rarityId")
    private UUID rarityId;

    @Column(name = "typeId")
    private UUID typeId;

    @ManyToOne
    @JoinColumn(name = "factionId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Faction faction;

    @ManyToOne
    @JoinColumn(name = "rarityId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Rarity rarity;

    @ManyToOne
    @JoinColumn(name = "typeId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Type type;

}
