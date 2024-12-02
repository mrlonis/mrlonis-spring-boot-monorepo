package com.mrlonis.honkaistarrail.entities;

import com.mrlonis.types.IBaseEntity;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import java.io.Serializable;
import java.util.UUID;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Builder
@Getter
@Setter
@ToString
@RequiredArgsConstructor
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Light_Cones")
public class LightCone implements IBaseEntity, Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private UUID id;

    @Column(name = "name")
    @NonNull private String name;

    @Column(name = "imageUrl")
    private String imageUrl;

    @Column(name = "rarity")
    private int rarity;

    @Column(name = "combatPathId")
    @NonNull private UUID combatPathId;

    @Column(name = "skill")
    @NonNull private String skill;

    @ManyToOne
    @JoinColumn(
            name = "combatPathId",
            referencedColumnName = "id",
            insertable = false,
            updatable = false,
            nullable = false)
    private CombatPath combatPath;
}
