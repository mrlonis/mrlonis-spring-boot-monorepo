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
@Table(name = "Relic_Sets")
public class RelicSet implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private UUID id;

    @Column(name = "relicOneId")
    @NonNull
    private UUID relicOneId;

    @Column(name = "relicTwoId")
    private UUID relicTwoId;

    @ManyToOne
    @JoinColumn(name = "relicOneId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
    private Relic relicOne;

    @ManyToOne
    @JoinColumn(name = "relicTwoId", referencedColumnName = "id", insertable = false, updatable = false)
    private Relic relicTwo;
}
