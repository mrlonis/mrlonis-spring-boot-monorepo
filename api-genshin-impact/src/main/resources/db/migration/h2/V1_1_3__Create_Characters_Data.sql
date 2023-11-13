INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
        weaponType,
        sandsStatOne,
        sandsStatTwo,
        gobletStatOne,
        gobletStatTwo,
        circletStatOne,
        circletStatTwo,
        substatOne,
        substatTwo,
        substatThree,
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
        -- gobletStatOne
        'Cryo DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        'CRIT DMG',
        -- circletStatTwo
        'ATK%',
        -- substatOne
        'CRIT DMG',
        -- substatTwo
        'ATK%',
        -- substatThree
        'Energy Recharge',
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
    ),
    (
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
        NULL,
        -- sandsStatTwo
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        NULL,
        -- sandsStatTwo
        NULL,
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
    ),
    (
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
        -- gobletStatOne
        NULL,
        -- gobletStatTwo
        NULL,
        -- circletStatOne
        NULL,
        -- circletStatTwo
        NULL,
        -- substatOne
        NULL,
        -- substatTwo
        NULL,
        -- substatThree
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
