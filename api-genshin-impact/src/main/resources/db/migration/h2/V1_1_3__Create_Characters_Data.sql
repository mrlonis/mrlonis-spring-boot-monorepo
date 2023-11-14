INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Kamisato Ayaka',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Cryo'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        'ATK%',
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Cryo DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT DMG',
        -- circletStatTwo
        'ATK%',
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT DMG',
        -- substatTwo
        'ATK%',
        -- substatThree
        'Energy Recharge',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Mistsplitter Reforged'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Haran Geppaku Futsu'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Light of Foliar Incision'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Summit Shaper'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Amenoma Kageuchi'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Blizzard Strayer'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Blizzard Strayer'
        ),
        -- artifactSetTwoIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
        ),
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gladiator''s Finale'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Echoes of an Offering'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Vermillion Hereafter'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Blizzard Strayer'
        ),
        -- artifactSetFiveIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        )
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Jean',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Anemo'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        'ATK%',
        -- sandsStatTwo
        'Energy Recharge',
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Anemo DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate',
        -- circletStatTwo
        'CRIT DMG',
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate',
        -- substatTwo
        'CRIT DMG',
        -- substatThree
        'ATK%',
        -- substatFour
        'Energy Recharge',
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Primordial Jade Cutter'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Freedom-Sworn'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Mistsplitter Reforged'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Haran Geppaku Futsu'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Amenoma Kageuchi'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Viridescent Venerer'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Ocean-Hued Clam'
        ),
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Viridescent Venerer'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetFiveIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
        )
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Traveler (Anemo)',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Anemo'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        'Elemental Mastery',
        -- sandsStatTwo
        'ATK%',
        -- sandsStatThree
        'Energy Recharge',
        -- gobletStatOne
        'Elemental Mastery',
        -- gobletStatTwo
        'Anemo DMG Bonus',
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'Elemental Mastery',
        -- circletStatTwo
        'CRIT Rate',
        -- circletStatThree
        'CRIT DMG',
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Traveler (Geo)',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Geo'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Traveler (Electro)',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Electro'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Traveler (Dendro)',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Dendro'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Traveler (Hydro)',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Hydro'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Lisa',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Electro'
        ),
        -- weaponType
        'Catalyst',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Barbara',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Hydro'
        ),
        -- weaponType
        'Catalyst',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Kaeya',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Cryo'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Diluc',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Pyro'
        ),
        -- weaponType
        'Claymore',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Razor',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Electro'
        ),
        -- weaponType
        'Claymore',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Amber',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Pyro'
        ),
        -- weaponType
        'Bow',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Venti',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Anemo'
        ),
        -- weaponType
        'Bow',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Xiangling',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Pyro'
        ),
        -- weaponType
        'Polearm',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Beidou',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Electro'
        ),
        -- weaponType
        'Claymore',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Xingqiu',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Hydro'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Xiao',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Anemo'
        ),
        -- weaponType
        'Polearm',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Ningguang',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Geo'
        ),
        -- weaponType
        'Catalyst',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Klee',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Pyro'
        ),
        -- weaponType
        'Catalyst',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Zhongli',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Geo'
        ),
        -- weaponType
        'Polearm',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Fischl',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Electro'
        ),
        -- weaponType
        'Bow',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Bennett',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Pyro'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Tartaglia',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Hydro'
        ),
        -- weaponType
        'Bow',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Noelle',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Geo'
        ),
        -- weaponType
        'Claymore',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Qiqi',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Cryo'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Chongyun',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Cryo'
        ),
        -- weaponType
        'Claymore',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Ganyu',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Cryo'
        ),
        -- weaponType
        'Bow',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Albedo',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Geo'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Diona',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Cryo'
        ),
        -- weaponType
        'Bow',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Mona',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Hydro'
        ),
        -- weaponType
        'Catalyst',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Keqing',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Electro'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Sucrose',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Anemo'
        ),
        -- weaponType
        'Catalyst',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Xinyan',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Geo'
        ),
        -- weaponType
        'Claymore',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Rosaria',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Cryo'
        ),
        -- weaponType
        'Polearm',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Hu Tao',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Pyro'
        ),
        -- weaponType
        'Polearm',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Kaedehara Kazuha',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Anemo'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Yanfei',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Pyro'
        ),
        -- weaponType
        'Catalyst',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Yoimiya',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Pyro'
        ),
        -- weaponType
        'Bow',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Thoma',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Pyro'
        ),
        -- weaponType
        'Polearm',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Eula',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Cryo'
        ),
        -- weaponType
        'Claymore',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Raiden Shogun',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Electro'
        ),
        -- weaponType
        'Polearm',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Sayu',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Anemo'
        ),
        -- weaponType
        'Claymore',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Sangonomiya Kokomi',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Hydro'
        ),
        -- weaponType
        'Catalyst',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Gorou',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Geo'
        ),
        -- weaponType
        'Bow',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Kujou Sara',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Electro'
        ),
        -- weaponType
        'Bow',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Arataki Itto',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Geo'
        ),
        -- weaponType
        'Claymore',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Yae Miko',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Electro'
        ),
        -- weaponType
        'Catalyst',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Shikanoin Heizou',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Anemo'
        ),
        -- weaponType
        'Catalyst',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Yelan',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Hydro'
        ),
        -- weaponType
        'Bow',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Kirara',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Dendro'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Aloy',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Cryo'
        ),
        -- weaponType
        'Bow',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Shenhe',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Cryo'
        ),
        -- weaponType
        'Polearm',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Yun Jin',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Geo'
        ),
        -- weaponType
        'Polearm',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Kuki Shinobu',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Electro'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Kamisato Ayato',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Hydro'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Collei',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Dendro'
        ),
        -- weaponType
        'Bow',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Dori',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Electro'
        ),
        -- weaponType
        'Claymore',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Tighnari',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Dendro'
        ),
        -- weaponType
        'Bow',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Nilou',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Hydro'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Cyno',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Electro'
        ),
        -- weaponType
        'Polearm',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Candace',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Hydro'
        ),
        -- weaponType
        'Polearm',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Nahida',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Dendro'
        ),
        -- weaponType
        'Catalyst',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Layla',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Cryo'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Wanderer',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Anemo'
        ),
        -- weaponType
        'Catalyst',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Faruzan',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Anemo'
        ),
        -- weaponType
        'Bow',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Yaoyao',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Dendro'
        ),
        -- weaponType
        'Polearm',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Alhaitham',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Dendro'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Dehya',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Pyro'
        ),
        -- weaponType
        'Claymore',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Mika',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Cryo'
        ),
        -- weaponType
        'Polearm',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Kaveh',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Dendro'
        ),
        -- weaponType
        'Claymore',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Baizhu',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Dendro'
        ),
        -- weaponType
        'Catalyst',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Lynette',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Anemo'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Lyney',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Pyro'
        ),
        -- weaponType
        'Bow',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Freminet',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Cryo'
        ),
        -- weaponType
        'Claymore',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Wriothesley',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Cryo'
        ),
        -- weaponType
        'Catalyst',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Neuvillette',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Hydro'
        ),
        -- weaponType
        'Catalyst',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Charlotte',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Cryo'
        ),
        -- weaponType
        'Catalyst',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Furina',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Hydro'
        ),
        -- weaponType
        'Sword',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Chevreuse',
        -- imageUrl
        NULL,
        -- rarity
        4,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Pyro'
        ),
        -- weaponType
        'Polearm',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        sandsStatThree,
        gobletStatOne,
        gobletStatTwo,
        gobletStatThree,
        circletStatOne,
        circletStatTwo,
        circletStatThree,
        substatOne,
        substatTwo,
        substatThree,
        substatFour,
        weaponOneId,
        weaponTwoId,
        weaponThreeId,
        weaponFourId,
        weaponFiveId,
        artifactSetOneIdFirst,
        artifactSetOneIdSecond,
        artifactSetTwoIdFirst,
        artifactSetTwoIdSecond,
        artifactSetThreeIdFirst,
        artifactSetThreeIdSecond,
        artifactSetFourIdFirst,
        artifactSetFourIdSecond,
        artifactSetFiveIdFirst,
        artifactSetFiveIdSecond
    )
VALUES (
        -- name
        'Navia',
        -- imageUrl
        NULL,
        -- rarity
        5,
        -- elementId
        (
            SELECT id
            FROM Elements
            WHERE name = 'Geo'
        ),
        -- weaponType
        'Claymore',
        -- sandsStatOne
        NULL,
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
        NULL,
        -- substatFour
        NULL,
        -- weaponOneId
        NULL,
        -- weaponTwoId
        NULL,
        -- weaponThreeId
        NULL,
        -- weaponFourId
        NULL,
        -- weaponFiveId
        NULL,
        -- artifactSetOneIdFirst
        NULL,
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        NULL,
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        NULL,
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        NULL,
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        NULL,
        -- artifactSetFiveIdSecond
        NULL
    );

