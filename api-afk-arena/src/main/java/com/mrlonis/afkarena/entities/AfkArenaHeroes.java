package com.mrlonis.afkarena.entities;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.io.Serializable;

@Builder
@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "AfkArena_Heroes")
public class AfkArenaHeroes implements ProjectEntity, Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "HeroId")
    private Integer heroId;

    @Column(name = "FactionId")
    private Integer factionId;

    @Column(name = "HeroRarity")
    private String heroRarity;

    @Column(name = "HeroImageUrl")
    private String heroImageUrl;

    @Column(name = "HeroName")
    private String heroName;

    @Column(name = "TypeId")
    private Integer typeId;

    @Column(name = "ClassId")
    private Integer classId;

    @Column(name = "RoleId")
    private Integer roleId;

    @ManyToOne
    @JoinColumn(name = "FactionId", referencedColumnName = "FactionId", insertable = false, updatable = false,
            nullable = false)
    private Faction heroFaction;

    @ManyToOne
    @JoinColumn(name = "TypeId", referencedColumnName = "TypeId", insertable = false, updatable = false, nullable = false)
    private Type heroType;

    @ManyToOne
    @JoinColumn(name = "ClassId", referencedColumnName = "ClassId", insertable = false, updatable = false, nullable = false)
    private Class heroClass;

    @ManyToOne
    @JoinColumn(name = "RoleId", referencedColumnName = "RoleId", insertable = false, updatable = false, nullable = false)
    private Role heroRole;
}
