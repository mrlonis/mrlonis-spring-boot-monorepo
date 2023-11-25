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

    @ManyToOne
    @JoinColumn(name = "combatPathId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private CombatPath combatPath;

    @Column(name = "combatTypeId")
    @NonNull
    private UUID combatTypeId;

    @ManyToOne
    @JoinColumn(name = "combatTypeId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private CombatType combatType;

    @Column(name = "bodyMainStatOne")
    private String bodyMainStatOne;

    @Column(name = "bodyMainStatTwo")
    private String bodyMainStatTwo;

    @Column(name = "feetMainStatOne")
    private String feetMainStatOne;

    @Column(name = "feetMainStatTwo")
    private String feetMainStatTwo;

    @Column(name = "planarSphereMainStat")
    private String planarSphereMainStat;

    @Column(name = "linkRopeMainStatOne")
    private String linkRopeMainStatOne;

    @Column(name = "linkRopeMainStatTwo")
    private String linkRopeMainStatTwo;

    @Column(name = "substatOne")
    private String substatOne;

    @Column(name = "substatTwo")
    private String substatTwo;

    @Column(name = "substatThree")
    private String substatThree;

    @Column(name = "substatFour")
    private String substatFour;

    @Column(name = "relicSetOneIdFirst")
    private UUID relicSetOneIdFirst;

    @ManyToOne
    @JoinColumn(name = "relicSetOneIdFirst", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Relic relicSetOneFirst;

    @Column(name = "relicSetOneIdSecond")
    private UUID relicSetOneIdSecond;

    @ManyToOne
    @JoinColumn(name = "relicSetOneIdSecond", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Relic relicSetOneSecond;

    @Column(name = "relicSetTwoIdFirst")
    private UUID relicSetTwoIdFirst;

    @ManyToOne
    @JoinColumn(name = "relicSetTwoIdFirst", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Relic relicSetTwoFirst;

    @Column(name = "relicSetTwoIdSecond")
    private UUID relicSetTwoIdSecond;

    @ManyToOne
    @JoinColumn(name = "relicSetTwoIdSecond", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Relic relicSetTwoSecond;

    @Column(name = "relicSetThreeIdFirst")
    private UUID relicSetThreeIdFirst;

    @ManyToOne
    @JoinColumn(name = "relicSetThreeIdFirst", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Relic relicSetThreeFirst;

    @Column(name = "relicSetThreeIdSecond")
    private UUID relicSetThreeIdSecond;

    @ManyToOne
    @JoinColumn(name = "relicSetThreeIdSecond", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Relic relicSetThreeSecond;

    @Column(name = "ornamentSetOneId")
    private UUID ornamentSetOneId;

    @ManyToOne
    @JoinColumn(name = "ornamentSetOneId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Ornament ornamentSetOne;

    @Column(name = "ornamentSetTwoId")
    private UUID ornamentSetTwoId;

    @ManyToOne
    @JoinColumn(name = "ornamentSetTwoId", referencedColumnName = "id", insertable = false, updatable = false)
    private Ornament ornamentSetTwo;

    @Column(name = "lightConeOneId")
    private UUID lightConeOneId;

    @ManyToOne
    @JoinColumn(name = "lightConeOneId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private LightCone lightConeOne;

    @Column(name = "lightConeTwoId")
    private UUID lightConeTwoId;

    @ManyToOne
    @JoinColumn(name = "lightConeTwoId", referencedColumnName = "id", insertable = false, updatable = false)
    private LightCone lightConeTwo;

    @Column(name = "lightConeThreeId")
    private UUID lightConeThreeId;

    @ManyToOne
    @JoinColumn(name = "lightConeThreeId", referencedColumnName = "id", insertable = false, updatable = false)
    private LightCone lightConeThree;

    @Column(name = "lightConeFourId")
    private UUID lightConeFourId;

    @ManyToOne
    @JoinColumn(name = "lightConeFourId", referencedColumnName = "id", insertable = false, updatable = false)
    private LightCone lightConeFour;

    @Column(name = "lightConeFiveId")
    private UUID lightConeFiveId;

    @ManyToOne
    @JoinColumn(name = "lightConeFiveId", referencedColumnName = "id", insertable = false, updatable = false)
    private LightCone lightConeFive;
}
