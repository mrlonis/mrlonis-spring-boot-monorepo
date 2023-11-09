package com.mrlonis.genshinimpact.entities;

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
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.UUID;

@Builder
@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Genshin_Impact_Characters")
public class Character implements IBaseEntity, Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private UUID id;

    @Column(name = "name")
    private String name;

    @Column(name = "imageUrl")
    private String imageUrl;

    @Column(name = "rarity")
    private int rarity;

    @Column(name = "elementId")
    private UUID elementId;

    @Column(name = "weaponOneId")
    private UUID weaponOneId;

    @Column(name = "weaponTwoId")
    private UUID weaponTwoId;

    @Column(name = "artifactSetOneId")
    private UUID artifactSetOneId;

    @Column(name = "artifactSetTwoId")
    private UUID artifactSetTwoId;

    @ManyToOne
    @JoinColumn(name = "elementId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Element element;

    @ManyToOne
    @JoinColumn(name = "weaponOneId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Weapon weaponOne;

    @ManyToOne
    @JoinColumn(name = "weaponTwoId", referencedColumnName = "id", insertable = false, updatable = false, nullable = true)
    private Weapon weaponTwo;

    @ManyToOne
    @JoinColumn(name = "artifactSetOneId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private ArtifactSet artifactSetOne;

    @ManyToOne
    @JoinColumn(name = "artifactSetTwoId", referencedColumnName = "id", insertable = false, updatable = false, nullable = true)
    private ArtifactSet artifactSetTwo;

}
