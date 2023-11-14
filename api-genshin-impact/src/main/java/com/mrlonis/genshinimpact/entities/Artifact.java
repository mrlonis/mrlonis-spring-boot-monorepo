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
@Table(name = "Artifacts")
public class Artifact implements IBaseEntity, Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", columnDefinition = "uuid")
    private UUID id;

    @Column(name = "name")
    @NonNull
    private String name;

    @Column(name = "imageUrl")
    // TODO - @NonNull
    private String imageUrl;

    @Column(name = "onePieceSetEffect")
    private String onePieceSetEffect;

    @Column(name = "twoPieceSetEffect")
    private String twoPieceSetEffect;

    @Column(name = "fourPieceSetEffect")
    private String fourPieceSetEffect;
}
