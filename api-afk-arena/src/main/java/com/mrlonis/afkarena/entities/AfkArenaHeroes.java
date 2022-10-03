package com.mrlonis.afkarena.entities;

import com.mrlonis.types.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.UUID;

@Builder
@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Afk_Arena_Heroes")
public class AfkArenaHeroes implements BaseEntity, Serializable {
    @Id
    @GeneratedValue
    @Column(name = "id")
    private UUID id;

    @Column(name = "name")
    private String name;

    @Column(name = "imageUrl")
    private String imageUrl;

    @Column(name = "rarity")
    private String rarity;

    @Column(name = "factionId")
    private UUID factionId;

    @Column(name = "typeId")
    private UUID typeId;

    @Column(name = "classId")
    private UUID classId;

    @Column(name = "roleId")
    private UUID roleId;

    @Column(name = "role2Id")
    private UUID role2Id;

    @ManyToOne
    @JoinColumn(name = "factionId", referencedColumnName = "id", insertable = false, updatable = false,
            nullable = false)
    private Faction faction;

    @ManyToOne
    @JoinColumn(name = "typeId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Type type;

    @ManyToOne
    @JoinColumn(name = "classId", referencedColumnName = "id", insertable = false, updatable = false, nullable = true)
    private Class heroClass;

    @ManyToOne
    @JoinColumn(name = "roleId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Role role;

    @ManyToOne
    @JoinColumn(name = "role2Id", referencedColumnName = "id", insertable = false, updatable = false, nullable = true)
    private Role role2;
}
