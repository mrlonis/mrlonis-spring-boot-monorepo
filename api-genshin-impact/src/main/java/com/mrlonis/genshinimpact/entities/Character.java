package com.mrlonis.genshinimpact.entities;

import com.mrlonis.genshinimpact.enums.CircletMainStats;
import com.mrlonis.genshinimpact.enums.GobletMainStats;
import com.mrlonis.genshinimpact.enums.SandsMainStats;
import com.mrlonis.genshinimpact.enums.Substats;
import com.mrlonis.genshinimpact.enums.WeaponTypes;
import com.mrlonis.types.IBaseEntity;
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

import java.io.Serializable;
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
public class Character implements IBaseEntity, Serializable {
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

    @Column(name = "weaponType")
    @NonNull
    private WeaponTypes weaponType;

    @Column(name = "elementId")
    @NonNull
    private UUID elementId;

    @ManyToOne
    @JoinColumn(name = "elementId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Element element;

    @Column(name = "sandsStatOne")
    @NonNull
    private SandsMainStats sandsStatOne;

    @Column(name = "sandsStatTwo")
    private SandsMainStats sandsStatTwo;

    @Column(name = "gobletStatOne")
    @NonNull
    private GobletMainStats gobletStatOne;

    @Column(name = "gobletStatTwo")
    private GobletMainStats gobletStatTwo;

    @Column(name = "circletStatOne")
    @NonNull
    private CircletMainStats circletStatOne;

    @Column(name = "circletStatTwo")
    private CircletMainStats circletStatTwo;

    @Column(name = "substatOne")
    @NonNull
    private Substats substatOne;

    @Column(name = "substatTwo")
    @NonNull
    private Substats substatTwo;

    @Column(name = "substatThree")
    @NonNull
    private Substats substatThree;

    @Column(name = "weaponOneId")
    @NonNull
    private UUID weaponOneId;

    @ManyToOne
    @JoinColumn(name = "weaponOneId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Weapon weaponOne;

    @Column(name = "weaponTwoId")
    private UUID weaponTwoId;

    @ManyToOne
    @JoinColumn(name = "weaponTwoId", referencedColumnName = "id", insertable = false, updatable = false)
    private Weapon weaponTwo;

    @Column(name = "weaponThreeId")
    private UUID weaponThreeId;

    @ManyToOne
    @JoinColumn(name = "weaponThreeId", referencedColumnName = "id", insertable = false, updatable = false)
    private Weapon weaponThree;

    @Column(name = "weaponFourId")
    private UUID weaponFourId;

    @ManyToOne
    @JoinColumn(name = "weaponFourId", referencedColumnName = "id", insertable = false, updatable = false)
    private Weapon weaponFour;

    @Column(name = "weaponFiveId")
    private UUID weaponFiveId;

    @ManyToOne
    @JoinColumn(name = "weaponFiveId", referencedColumnName = "id", insertable = false, updatable = false)
    private Weapon weaponFive;

    @Column(name = "artifactSetOneIdFirst")
    @NonNull
    private UUID artifactSetOneIdFirst;

    @ManyToOne
    @JoinColumn(name = "artifactSetOneIdFirst", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Artifact artifactSetOneFirst;

    @Column(name = "artifactSetOneIdSecond")
    private UUID artifactSetOneIdSecond;

    @ManyToOne
    @JoinColumn(name = "artifactSetOneIdSecond", referencedColumnName = "id", insertable = false, updatable = false)
    private Artifact artifactSetOneSecond;

    @Column(name = "artifactSetTwoIdFirst")
    private UUID artifactSetTwoIdFirst;

    @ManyToOne
    @JoinColumn(name = "artifactSetTwoIdFirst", referencedColumnName = "id", insertable = false, updatable = false)
    private Artifact artifactSetTwoFirst;

    @Column(name = "artifactSetTwoIdSecond")
    private UUID artifactSetTwoIdSecond;

    @ManyToOne
    @JoinColumn(name = "artifactSetTwoIdSecond", referencedColumnName = "id", insertable = false, updatable = false)
    private Artifact artifactSetTwoSecond;

    @Column(name = "artifactSetThreeIdFirst")
    private UUID artifactSetThreeIdFirst;

    @ManyToOne
    @JoinColumn(name = "artifactSetThreeIdFirst", referencedColumnName = "id", insertable = false, updatable = false)
    private Artifact artifactSetThreeFirst;

    @Column(name = "artifactSetThreeIdSecond")
    private UUID artifactSetThreeIdSecond;

    @ManyToOne
    @JoinColumn(name = "artifactSetThreeIdSecond", referencedColumnName = "id", insertable = false, updatable = false)
    private Artifact artifactSetThreeSecond;

    @Column(name = "artifactSetFourIdFirst")
    private UUID artifactSetFourIdFirst;

    @ManyToOne
    @JoinColumn(name = "artifactSetFourIdFirst", referencedColumnName = "id", insertable = false, updatable = false)
    private Artifact artifactSetFourFirst;

    @Column(name = "artifactSetFourIdSecond")
    private UUID artifactSetFourIdSecond;

    @ManyToOne
    @JoinColumn(name = "artifactSetFourIdSecond", referencedColumnName = "id", insertable = false, updatable = false)
    private Artifact artifactSetFourSecond;

    @Column(name = "artifactSetFiveIdFirst")
    private UUID artifactSetFiveIdFirst;

    @ManyToOne
    @JoinColumn(name = "artifactSetFiveIdFirst", referencedColumnName = "id", insertable = false, updatable = false)
    private Artifact artifactSetFiveFirst;

    @Column(name = "artifactSetFiveIdSecond")
    private UUID artifactSetFiveIdSecond;

    @ManyToOne
    @JoinColumn(name = "artifactSetFiveIdSecond", referencedColumnName = "id", insertable = false, updatable = false)
    private Artifact artifactSetFiveSecond;
}
