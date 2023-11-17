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
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
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
        'CRIT Rate / CRIT DMG',
        -- circletStatThree
        NULL,
        -- substatOne
        'Elemental Mastery',
        -- substatTwo
        'Energy Recharge',
        -- substatThree
        'ATK%',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Freedom-Sworn'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Primordial Jade Cutter'
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
            WHERE name = 'Sacrificial Sword'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Iron Sting'
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
            WHERE name = 'Gilded Dreams'
        ),
        -- artifactSetTwoIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Viridescent Venerer'
        ),
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Viridescent Venerer'
        ),
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
            WHERE name = 'Gilded Dreams'
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
        'ATK%',
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Geo DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
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
            WHERE name = 'Primordial Jade Cutter'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Mistsplitter Reforged'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Haran Geppaku Futsu'
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
            WHERE name = 'The Black Sword'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Archaic Petra'
        ),
        -- artifactSetOneIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Archaic Petra'
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
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gladiator''s Finale'
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
        'Energy Recharge',
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Electro DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'Energy Recharge',
        -- substatTwo
        'ATK%',
        -- substatThree
        'CRIT Rate / CRIT DMG',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Favonius Sword'
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
            WHERE name = 'Sacrificial Sword'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Skyward Blade'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Festering Desire'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Instructor'
        ),
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'The Exile'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'The Exile'
        ),
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
        'Energy Recharge',
        -- sandsStatTwo
        'ATK%',
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Dendro DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'Energy Recharge',
        -- substatTwo
        'CRIT Rate / CRIT DMG',
        -- substatThree
        'ATK%',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Freedom-Sworn'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Favonius Sword'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Sacrificial Sword'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Sapwood Blade'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Skyward Blade'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Deepwood Memories'
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
            WHERE name = 'Instructor'
        ),
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gilded Dreams'
        ),
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'The Exile'
        ),
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
        'Elemental Mastery',
        -- sandsStatTwo
        'ATK%',
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Electro DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
        -- substatTwo
        'Elemental Mastery',
        -- substatThree
        'ATK%',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Kagura''s Verity'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Lost Prayer to the Sacred Winds'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Skyward Atlas'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'A Thousand Floating Dreams'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'The Widsith'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Thundering Fury'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gilded Dreams'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Thundersoother'
        ),
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gilded Dreams'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Thundering Fury'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
        ),
        -- artifactSetFiveIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Thundering Fury'
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
        'HP%',
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'HP%',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'Healing Bonus',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'HP%',
        -- substatTwo
        'HP',
        -- substatThree
        'Energy Recharge',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Thrilling Tales of Dragon Slayers'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Everlasting Moonglow'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Prototype Amber'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Favonius Codex'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Wine and Song'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Maiden Beloved'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Maiden Beloved'
        ),
        -- artifactSetTwoIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Tenacity of the Millelith'
        ),
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Maiden Beloved'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Ocean-Hued Clam'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Ocean-Hued Clam'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Tenacity of the Millelith'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Instructor'
        ),
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
        'Energy Recharge',
        -- sandsStatTwo
        'ATK%',
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Cryo DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'Energy Recharge',
        -- substatTwo
        'CRIT Rate / CRIT DMG',
        -- substatThree
        'ATK%',
        -- substatFour
        NULL,
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
            WHERE name = 'Mistsplitter Reforged'
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
            WHERE name = 'Freedom-Sworn'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Lion''s Roar'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
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
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Instructor'
        ),
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
        'ATK%',
        -- sandsStatTwo
        'Elemental Mastery',
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Pyro DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
        -- substatTwo
        'ATK%',
        -- substatThree
        'Elemental Mastery',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Redhorn Stonethresher'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Beacon of the Reed Sea'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Serpent Spine'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Wolf''s Gravestone'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'The Unforged'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Crimson Witch of Flames'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gilded Dreams'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Crimson Witch of Flames'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gilded Dreams'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Crimson Witch of Flames'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gilded Dreams'
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
        'ATK%',
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Physical DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
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
            WHERE name = 'Wolf''s Gravestone'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Beacon of the Reed Sea'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Song of Broken Pines'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Redhorn Stonethresher'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Serpent Spine'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Pale Flame'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gladiator''s Finale'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Bloodstained Chivalry'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Pale Flame'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gladiator''s Finale'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Pale Flame'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gladiator''s Finale'
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
        'Energy Recharge',
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Pyro DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'Energy Recharge',
        -- substatTwo
        'CRIT Rate / CRIT DMG',
        -- substatThree
        'ATK%',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Elegy for the End'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Favonius Warbow'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Sacrificial Bow'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'The Viridescent Hunt'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'End of the Line'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Instructor'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'The Exile'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetFourIdSecond
        NULL,
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
        'Elemental Mastery',
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Elemental Mastery',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'Elemental Mastery',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'Elemental Mastery',
        -- substatTwo
        'Energy Recharge',
        -- substatThree
        'ATK%',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Elegy for the End'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'The Stringless'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Windblume Ode'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Alley Hunter'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Favonius Warbow'
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
            WHERE name = 'Gilded Dreams'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Wanderer''s Troupe'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gilded Dreams'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gilded Dreams'
        ),
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
        'Energy Recharge',
        -- sandsStatTwo
        'ATK%',
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Pyro DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'Energy Recharge',
        -- substatTwo
        'CRIT Rate / CRIT DMG',
        -- substatThree
        'ATK%',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Staff of the Scarlet Sands'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Staff of Homa'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'The Catch'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Engulfing Lightning'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Deathmatch'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Crimson Witch of Flames'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Crimson Witch of Flames'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Crimson Witch of Flames'
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
        'ATK%',
        -- sandsStatTwo
        'Energy Recharge',
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Electro DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
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
            WHERE name = 'Wolf''s Gravestone'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Serpent Spine'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Beacon of the Reed Sea'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Redhorn Stonethresher'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Akuoumaru'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetTwoIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Thundering Fury'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Thundering Fury'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Thundersoother'
        ),
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
        'Energy Recharge',
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Hydro DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'Energy Recharge',
        -- substatTwo
        'CRIT Rate / CRIT DMG',
        -- substatThree
        'ATK%',
        -- substatFour
        NULL,
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
            WHERE name = 'Favonius Sword'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Sacrificial Sword'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Mistsplitter Reforged'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Haran Geppaku Futsu'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
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
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Heart of Depth'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Heart of Depth'
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
        'ATK%',
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Anemo DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
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
            WHERE name = 'Primordial Jade Winged-Spear'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Staff of Homa'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Vortex Vanquisher'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Calamity Queller'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Deathmatch'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Vermillion Hereafter'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Desert Pavilion Chronicle'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Desert Pavilion Chronicle'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Vermillion Hereafter'
        ),
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
            WHERE name = 'Vermillion Hereafter'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Desert Pavilion Chronicle'
        ),
        -- artifactSetFiveIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Viridescent Venerer'
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
        'ATK%',
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Geo DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
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
            WHERE name = 'Lost Prayer to the Sacred Winds'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Kagura''s Verity'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Skyward Atlas'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Memory of Dust'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Solar Pearl'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Archaic Petra'
        ),
        -- artifactSetOneIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Archaic Petra'
        ),
        -- artifactSetTwoIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Archaic Petra'
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
            WHERE name = 'Archaic Petra'
        ),
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
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
        'ATK%',
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Pyro DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
        -- substatTwo
        'ATK%',
        -- substatThree
        'Elemental Mastery',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'The Widsith'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Lost Prayer to the Sacred Winds'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Kagura''s Verity'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'The Widsith'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Skyward Atlas'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Crimson Witch of Flames'
        ),
        -- artifactSetOneIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
        ),
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Crimson Witch of Flames'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Crimson Witch of Flames'
        ),
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Crimson Witch of Flames'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Wanderer''s Troupe'
        ),
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
        'HP%',
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'HP%',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'HP%',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'HP%',
        -- substatTwo
        'HP',
        -- substatThree
        'Energy Recharge',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Black Tassel'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Favonius Lance'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Staff of Homa'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Skyward Spine'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Engulfing Lightning'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Tenacity of the Millelith'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Archaic Petra'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Deepwood Memories'
        ),
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Instructor'
        ),
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
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
        'ATK%',
        -- sandsStatTwo
        'Elemental Mastery',
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Electro DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
        -- substatTwo
        'ATK%',
        -- substatThree
        'Elemental Mastery',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Aqua Simulacra'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Polar Star'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Hunter''s Path'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Skyward Harp'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'The Stringless'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Golden Troupe'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
        ),
        -- artifactSetTwoIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Thundering Fury'
        ),
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gilded Dreams'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Thundering Fury'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Thundersoother'
        ),
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Thundering Fury'
        ),
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
        'ATK%',
        -- sandsStatTwo
        'Energy Recharge',
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Pyro DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
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
            WHERE name = 'Aquila Favonia'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Skyward Blade'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Freedom-Sworn'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'The Alley Flash'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Crimson Witch of Flames'
        ),
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Crimson Witch of Flames'
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
        'ATK%',
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Hydro DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
        -- substatTwo
        'ATK%',
        -- substatThree
        'Elemental Mastery',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Polar Star'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Thundering Pulse'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Hunter''s Path'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Aqua Simulacra'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'The Viridescent Hunt'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Heart of Depth'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Heart of Depth'
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
            WHERE name = 'Heart of Depth'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
        ),
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
        'DEF%',
        -- sandsStatTwo
        'ATK%',
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Geo DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
        -- substatTwo
        'Energy Recharge',
        -- substatThree
        'DEF%',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Redhorn Stonethresher'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Serpent Spine'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Skyward Pride'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Whiteblind'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Favonius Greatsword'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Husk of Opulent Dreams'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Retracing Bolide'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gladiator''s Finale'
        ),
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Archaic Petra'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Husk of Opulent Dreams'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gladiator''s Finale'
        ),
        -- artifactSetFiveIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Husk of Opulent Dreams'
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
        'ATK%',
        -- sandsStatTwo
        'Energy Recharge',
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'ATK%',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'ATK%',
        -- circletStatTwo
        'Healing Bonus',
        -- circletStatThree
        NULL,
        -- substatOne
        'ATK%',
        -- substatTwo
        'Energy Recharge',
        -- substatThree
        'ATK',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Sacrificial Sword'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Skyward Blade'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Kagotsurube Isshin'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'The Flute'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Favonius Sword'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Tenacity of the Millelith'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Ocean-Hued Clam'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Maiden Beloved'
        ),
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Maiden Beloved'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
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
        'ATK%',
        -- sandsStatTwo
        'Energy Recharge',
        -- sandsStatThree
        'Elemental Mastery',
        -- gobletStatOne
        'Cryo DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
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
            WHERE name = 'Wolf''s Gravestone'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Serpent Spine'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Redhorn Stonethresher'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Beacon of the Reed Sea'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'The Unforged'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Blizzard Strayer'
        ),
        -- artifactSetOneIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Blizzard Strayer'
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
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
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
            WHERE name = 'Emblem of Severed Fate'
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
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
        -- substatTwo
        'Elemental Mastery',
        -- substatThree
        'ATK%',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Hunter''s Path'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Amos'' Bow'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Aqua Simulacra'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Polar Star'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Prototype Crescent'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Wanderer''s Troupe'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Wanderer''s Troupe'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Blizzard Strayer'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
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
            WHERE name = 'Wanderer''s Troupe'
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
        'DEF%',
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Geo DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        'DEF%',
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
        -- substatTwo
        'DEF%',
        -- substatThree
        'ATK%',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Cinnabar Spindle'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Harbinger of Dawn'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Primordial Jade Cutter'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Mistsplitter Reforged'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Freedom-Sworn'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Husk of Opulent Dreams'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Archaic Petra'
        ),
        -- artifactSetTwoIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Husk of Opulent Dreams'
        ),
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Archaic Petra'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Tenacity of the Millelith'
        ),
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
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
        'Energy Recharge',
        -- sandsStatTwo
        'HP%',
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'HP%',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'HP%',
        -- circletStatTwo
        'Healing Bonus',
        -- circletStatThree
        NULL,
        -- substatOne
        'HP%',
        -- substatTwo
        'Energy Recharge',
        -- substatThree
        'HP',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Favonius Warbow'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Sacrificial Bow'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Elegy for the End'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Recurve Bow'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'End of the Line'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetTwoIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Tenacity of the Millelith'
        ),
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Maiden Beloved'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Tenacity of the Millelith'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Maiden Beloved'
        ),
        -- artifactSetFourIdSecond
        NULL,
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
            WHERE name = 'Maiden Beloved'
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
        'Energy Recharge',
        -- sandsStatTwo
        'ATK%',
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Hydro DMG Bonus',
        -- gobletStatTwo
        'ATK%',
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'Energy Recharge',
        -- substatTwo
        'CRIT Rate',
        -- substatThree
        'ATK%',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Thrilling Tales of Dragon Slayers'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Favonius Codex'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Prototype Amber'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Wine and Song'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'The Widsith'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Noblesse Oblige'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Tenacity of the Millelith'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Scholar'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Scholar'
        ),
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
        'ATK%',
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Electro DMG Bonus',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'CRIT Rate / CRIT DMG',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'CRIT Rate / CRIT DMG',
        -- substatTwo
        'ATK%',
        -- substatThree
        'Elemental Mastery',
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
            WHERE name = 'Primordial Jade Cutter'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Haran Geppaku Futsu'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Freedom-Sworn'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Harbinger of Dawn'
        ),
        -- artifactSetOneIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Thundering Fury'
        ),
        -- artifactSetOneIdSecond
        NULL,
        -- artifactSetTwoIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Thundersoother'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gilded Dreams'
        ),
        -- artifactSetThreeIdSecond
        NULL,
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gilded Dreams'
        ),
        -- artifactSetFourIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Thundering Fury'
        ),
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Shimenawa''s Reminiscence'
        ),
        -- artifactSetFiveIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Thundering Fury'
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
        'Elemental Mastery',
        -- sandsStatTwo
        NULL,
        -- sandsStatThree
        NULL,
        -- gobletStatOne
        'Elemental Mastery',
        -- gobletStatTwo
        NULL,
        -- gobletStatThree
        NULL,
        -- circletStatOne
        'Elemental Mastery',
        -- circletStatTwo
        NULL,
        -- circletStatThree
        NULL,
        -- substatOne
        'Elemental Mastery',
        -- substatTwo
        'Energy Recharge',
        -- substatThree
        'ATK%',
        -- substatFour
        NULL,
        -- weaponOneId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'A Thousand Floating Dreams'
        ),
        -- weaponTwoId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Sacrificial Fragments'
        ),
        -- weaponThreeId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Thrilling Tales of Dragon Slayers'
        ),
        -- weaponFourId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Hakushin Ring'
        ),
        -- weaponFiveId
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Magic Guide'
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
            WHERE name = 'Instructor'
        ),
        -- artifactSetTwoIdSecond
        NULL,
        -- artifactSetThreeIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gilded Dreams'
        ),
        -- artifactSetThreeIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Wanderer''s Troupe'
        ),
        -- artifactSetFourIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gilded Dreams'
        ),
        -- artifactSetFourIdSecond
        NULL,
        -- artifactSetFiveIdFirst
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Gilded Dreams'
        ),
        -- artifactSetFiveIdSecond
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Viridescent Venerer'
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
