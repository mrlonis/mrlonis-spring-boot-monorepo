INSERT INTO Characters (
        name,
        imageUrl,
        rarity,
        elementId,
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
        'Kamisato Ayaka',
        'characters/Ayaka.png',
        5,
        (
            SELECT id
            FROM Elements
            WHERE name = 'Cryo'
        ),
        'ATK%',
        NULL,
        'Cryo DMG Bonus',
        NULL,
        'CRIT DMG',
        'ATK%',
        'CRIT DMG',
        'ATK%',
        'Energy Recharge',
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Mistsplitter Reforged'
        ),
        (
            SELECT id
            FROM Weapons
            WHERE name = 'Amenoma Kageuchi'
        ),
        NULL,
        NULL,
        NULL,
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Blizzard Strayer'
        ),
        NULL,
        (
            SELECT id
            FROM Artifacts
            WHERE name = 'Emblem of Severed Fate'
        ),
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL
    );
