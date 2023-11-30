package com.mrlonis.honkaistarrail.repositories;

import com.mrlonis.honkaistarrail.entities.Character;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "characters")
@CrossOrigin(origins = "http://localhost:4200")
public interface CharactersRepository extends JpaRepository<Character, UUID> {
    @RestResource(path = "findByName", rel = "findByName")
    Optional<Character> findByNameIgnoreCaseIs(@Param("name") String name);

    List<Character> findByOrnamentSetOneIdIs(@Param("ornamentSetOneId") UUID ornamentSetOneId);

    List<Character> findByOrnamentSetOneIdIsOrOrnamentSetTwoIdIs(@Param("ornamentSetOneId") UUID ornamentSetOneId,
                                                                 @Param("ornamentSetTwoId") UUID ornamentSetTwoId);

    List<Character> findByOrnamentSetOneIdIsOrOrnamentSetTwoIdIsOrOrnamentSetThreeIdIs(@Param("ornamentSetOneId") UUID ornamentSetOneId,
                                                                                       @Param("ornamentSetTwoId") UUID ornamentSetTwoId,
                                                                                       @Param("ornamentSetThreeId") UUID ornamentSetThreeId);

    List<Character> findByRelicSetOneIdFirstIsOrRelicSetOneIdSecondIs(@Param("relicSetOneIdFirst") UUID relicSetOneIdFirst,
                                                                      @Param("relicSetOneIdSecond") UUID relicSetOneIdSecond);

    List<Character> findByRelicSetOneIdFirstIsOrRelicSetOneIdSecondIsOrRelicSetTwoIdFirstIsOrRelicSetTwoIdSecondIs(@Param("relicSetOneIdFirst") UUID relicSetOneIdFirst,
                                                                                                                   @Param("relicSetOneIdSecond") UUID relicSetOneIdSecond,
                                                                                                                   @Param("relicSetTwoIdFirst") UUID relicSetTwoIdFirst,
                                                                                                                   @Param("relicSetTwoIdSecond") UUID relicSetTwoIdSecond);

    List<Character> findByRelicSetOneIdFirstIsOrRelicSetOneIdSecondIsOrRelicSetTwoIdFirstIsOrRelicSetTwoIdSecondIsOrRelicSetThreeIdFirstIsOrRelicSetThreeIdSecondIs(
            @Param("relicSetOneIdFirst") UUID relicSetOneIdFirst,
            @Param("relicSetOneIdSecond") UUID relicSetOneIdSecond,
            @Param("relicSetTwoIdFirst") UUID relicSetTwoIdFirst,
            @Param("relicSetTwoIdSecond") UUID relicSetTwoIdSecond,
            @Param("relicSetThreeIdFirst") UUID relicSetThreeIdFirst,
            @Param("relicSetThreeIdSecond") UUID relicSetThreeIdSecond);
}
