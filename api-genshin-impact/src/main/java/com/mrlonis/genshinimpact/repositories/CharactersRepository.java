package com.mrlonis.genshinimpact.repositories;

import com.mrlonis.genshinimpact.entities.Character;
import java.util.List;
import java.util.Optional;
import java.util.UUID;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@RepositoryRestResource(collectionResourceRel = "data", itemResourceRel = "item", path = "characters")
@CrossOrigin(origins = "http://localhost:3000")
public interface CharactersRepository extends JpaRepository<Character, UUID> {
    @RestResource(path = "findByName", rel = "findByName")
    Optional<Character> findByNameIgnoreCaseIs(@Param("name") String name);

    @RestResource(path = "findByArtifactSetOne", rel = "findByArtifactSetOne")
    List<Character> findByArtifactSetOneIdFirstIsOrArtifactSetOneIdSecondIs(
            @Param("artifactSetOneIdFirst") UUID artifactSetOneIdFirst,
            @Param("artifactSetOneIdSecond") UUID artifactSetOneIdSecond);

    @RestResource(path = "findByArtifactSetOneAndTwo", rel = "findByArtifactSetOneAndTwo")
    List<Character>
            findByArtifactSetOneIdFirstIsOrArtifactSetOneIdSecondIsOrArtifactSetTwoIdFirstIsOrArtifactSetTwoIdSecondIs(
                    @Param("artifactSetOneIdFirst") UUID artifactSetOneIdFirst,
                    @Param("artifactSetOneIdSecond") UUID artifactSetOneIdSecond,
                    @Param("artifactSetTwoIdFirst") UUID artifactSetTwoIdFirst,
                    @Param("artifactSetTwoIdSecond") UUID artifactSetTwoIdSecond);

    @RestResource(path = "findByArtifactSetOneTwoAndThree", rel = "findByArtifactSetOneTwoAndThree")
    List<Character>
            findByArtifactSetOneIdFirstIsOrArtifactSetOneIdSecondIsOrArtifactSetTwoIdFirstIsOrArtifactSetTwoIdSecondIsOrArtifactSetThreeIdFirstIsOrArtifactSetThreeIdSecondIs(
                    @Param("artifactSetOneIdFirst") UUID artifactSetOneIdFirst,
                    @Param("artifactSetOneIdSecond") UUID artifactSetOneIdSecond,
                    @Param("artifactSetTwoIdFirst") UUID artifactSetTwoIdFirst,
                    @Param("artifactSetTwoIdSecond") UUID artifactSetTwoIdSecond,
                    @Param("artifactSetThreeIdFirst") UUID artifactSetThreeIdFirst,
                    @Param("artifactSetThreeIdSecond") UUID artifactSetThreeIdSecond);

    @RestResource(path = "findByArtifactSetOneTwoThreeAndFour", rel = "findByArtifactSet")
    List<Character>
            findByArtifactSetOneIdFirstIsOrArtifactSetOneIdSecondIsOrArtifactSetTwoIdFirstIsOrArtifactSetTwoIdSecondIsOrArtifactSetThreeIdFirstIsOrArtifactSetThreeIdSecondIsOrArtifactSetFourIdFirstIsOrArtifactSetFourIdSecondIs(
                    @Param("artifactSetOneIdFirst") UUID artifactSetOneIdFirst,
                    @Param("artifactSetOneIdSecond") UUID artifactSetOneIdSecond,
                    @Param("artifactSetTwoIdFirst") UUID artifactSetTwoIdFirst,
                    @Param("artifactSetTwoIdSecond") UUID artifactSetTwoIdSecond,
                    @Param("artifactSetThreeIdFirst") UUID artifactSetThreeIdFirst,
                    @Param("artifactSetThreeIdSecond") UUID artifactSetThreeIdSecond,
                    @Param("artifactSetFourIdFirst") UUID artifactSetFourIdFirst,
                    @Param("artifactSetFourIdSecond") UUID artifactSetFourIdSecond);

    @RestResource(path = "findByAllArtifactSets", rel = "findByAllArtifactSets")
    List<Character>
            findByArtifactSetOneIdFirstIsOrArtifactSetOneIdSecondIsOrArtifactSetTwoIdFirstIsOrArtifactSetTwoIdSecondIsOrArtifactSetThreeIdFirstIsOrArtifactSetThreeIdSecondIsOrArtifactSetFourIdFirstIsOrArtifactSetFourIdSecondIsOrArtifactSetFiveIdFirstIsOrArtifactSetFiveIdSecondIs(
                    @Param("artifactSetOneIdFirst") UUID artifactSetOneIdFirst,
                    @Param("artifactSetOneIdSecond") UUID artifactSetOneIdSecond,
                    @Param("artifactSetTwoIdFirst") UUID artifactSetTwoIdFirst,
                    @Param("artifactSetTwoIdSecond") UUID artifactSetTwoIdSecond,
                    @Param("artifactSetThreeIdFirst") UUID artifactSetThreeIdFirst,
                    @Param("artifactSetThreeIdSecond") UUID artifactSetThreeIdSecond,
                    @Param("artifactSetFourIdFirst") UUID artifactSetFourIdFirst,
                    @Param("artifactSetFourIdSecond") UUID artifactSetFourIdSecond,
                    @Param("artifactSetFiveIdFirst") UUID artifactSetFiveIdFirst,
                    @Param("artifactSetFiveIdSecond") UUID artifactSetFiveIdSecond);
}
