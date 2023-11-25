package com.mrlonis.honkaistarrail.entities;

import com.mrlonis.honkaistarrail.enums.BodyMainStats;
import com.mrlonis.honkaistarrail.enums.FeetMainStats;
import com.mrlonis.honkaistarrail.enums.LinkRopeMainStats;
import com.mrlonis.honkaistarrail.enums.PlanarSphereMainStats;
import com.mrlonis.honkaistarrail.enums.Substats;
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
    private String imageUrl;

    @Column(name = "rarity")
    private int rarity;

    @Column(name = "combatPathId")
    private UUID combatPathId;

    @ManyToOne
    @JoinColumn(name = "combatPathId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private CombatPath combatPath;

    @Column(name = "combatTypeId")
    private UUID combatTypeId;

    @ManyToOne
    @JoinColumn(name = "combatTypeId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private CombatType combatType;

    @Column(name = "bodyMainStatOne")
    private BodyMainStats bodyMainStatOne;

    @Column(name = "bodyMainStatTwo")
    private BodyMainStats bodyMainStatTwo;

    @Column(name = "feetMainStatOne")
    private FeetMainStats feetMainStatOne;

    @Column(name = "feetMainStatTwo")
    private FeetMainStats feetMainStatTwo;

    @Column(name = "planarSphereMainStat")
    private PlanarSphereMainStats planarSphereMainStat;

    @Column(name = "linkRopeMainStatOne")
    private LinkRopeMainStats linkRopeMainStatOne;

    @Column(name = "linkRopeMainStatTwo")
    private LinkRopeMainStats linkRopeMainStatTwo;

    @Column(name = "substatOne")
    private Substats substatOne;

    @Column(name = "substatTwo")
    private Substats substatTwo;

    @Column(name = "substatThree")
    private Substats substatThree;

    @Column(name = "substatFour")
    private Substats substatFour;

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

    @Column(name = "ornamentSetThreeId")
    private UUID ornamentSetThreeId;

    @ManyToOne
    @JoinColumn(name = "ornamentSetThreeId", referencedColumnName = "id", insertable = false, updatable = false)
    private Ornament ornamentSetThree;

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
