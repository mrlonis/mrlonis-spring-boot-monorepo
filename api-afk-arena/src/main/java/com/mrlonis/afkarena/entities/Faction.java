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
import javax.persistence.Table;

@Builder
@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "AfkArena_Factions")
public class Faction implements ProjectEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "FactionId")
    private Integer factionId;

    @Column(name = "FactionName")
    private String factionName;

    @Column(name = "FactionImageUrl")
    private String factionImageUrl;
}
