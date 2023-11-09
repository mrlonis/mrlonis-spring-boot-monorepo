package com.mrlonis.honkaistarrail.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;

@Builder
@Getter
@Setter
@ToString
@RequiredArgsConstructor
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Characters")
public class Character {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private UUID id;

    @Column(name = "name")
    @NonNull
    private String name;

    @Column(name = "imageUrl")
    @NonNull
    private String imageUrl;

    @Column(name = "rarity")
    private int rarity;

    @Column(name = "combatPathId")
    @NonNull
    private UUID combatPathId;

    @Column(name = "combatTypeId")
    @NonNull
    private UUID combatTypeId;

    @Column(name = "relicSetOneId")
    @NonNull
    private UUID relicSetOneId;

    @Column(name = "relicSetTwoId")
    private UUID relicSetTwoId;

    @Column(name = "relicSetThreeId")
    private UUID relicSetThreeId;

    @Column(name = "ornamentOneId")
    @NonNull
    private UUID ornamentOneId;

    @Column(name = "ornamentTwoId")
    private UUID ornamentTwoId;

    @Column(name = "ornamentThreeId")
    private UUID ornamentThreeId;

    @Column(name = "lightConeOneId")
    @NonNull
    private UUID lightConeOneId;

    @Column(name = "lightConeTwoId")
    private UUID lightConeTwoId;

    @Column(name = "lightConeThreeId")
    private UUID lightConeThreeId;

    @Column(name = "lightConeFourId")
    private UUID lightConeFourId;

    @Column(name = "lightConeFiveId")
    private UUID lightConeFiveId;

    @ManyToOne
    @JoinColumn(name = "combatPathId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private CombatPath combatPath;

    @ManyToOne
    @JoinColumn(name = "combatTypeId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private CombatType combatType;

    @ManyToOne
    @JoinColumn(name = "relicSetOneId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private RelicSet relicSetOne;

    @ManyToOne
    @JoinColumn(name = "relicSetTwoId", referencedColumnName = "id", insertable = false, updatable = false)
    private RelicSet relicSetTwo;

    @ManyToOne
    @JoinColumn(name = "relicSetThreeId", referencedColumnName = "id", insertable = false, updatable = false)
    private RelicSet relicSetThree;

    @ManyToOne
    @JoinColumn(name = "ornamentOneId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Ornament ornamentOne;

    @ManyToOne
    @JoinColumn(name = "ornamentTwoId", referencedColumnName = "id", insertable = false, updatable = false)
    private Ornament ornamentTwo;

    @ManyToOne
    @JoinColumn(name = "ornamentThreeId", referencedColumnName = "id", insertable = false, updatable = false)
    private Ornament ornamentThree;

    @ManyToOne
    @JoinColumn(name = "lightConeOneId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private LightCone lightConeOne;

    @ManyToOne
    @JoinColumn(name = "lightConeTwoId", referencedColumnName = "id", insertable = false, updatable = false)
    private LightCone lightConeTwo;

    @ManyToOne
    @JoinColumn(name = "lightConeThreeId", referencedColumnName = "id", insertable = false, updatable = false)
    private LightCone lightConeThree;

    @ManyToOne
    @JoinColumn(name = "lightConeFourId", referencedColumnName = "id", insertable = false, updatable = false)
    private LightCone lightConeFour;

    @ManyToOne
    @JoinColumn(name = "lightConeFiveId", referencedColumnName = "id", insertable = false, updatable = false)
    private LightCone lightConeFive;
}
