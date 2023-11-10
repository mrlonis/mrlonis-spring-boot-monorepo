package com.mrlonis.genshinimpact.entities;

import com.mrlonis.types.IBaseEntity;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
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
@Table(name = "Weapons")
public class Weapon implements IBaseEntity, Serializable {
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
    private String weaponType;

    @Column(name = "substatType")
    @NonNull
    private String substatType;

    @Column(name = "weaponAffix")
    private String weaponAffix;

    @Column(name = "affixDescription")
    private String affixDescription;

    @Column(name = "description")
    @NonNull
    private String description;
}
