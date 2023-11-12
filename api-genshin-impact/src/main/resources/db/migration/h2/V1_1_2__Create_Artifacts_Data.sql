INSERT INTO Artifacts (
        name,
        imageUrl,
        onePieceSetEffect,
        twoPieceSetEffect,
        fourPieceSetEffect
    )
VALUES (
        'Adventurer',
        '',
        NULL,
        'Max HP increased by 1000',
        'Opening a chest regenerates 30% Max HP over 5s'
    ),
    (
        'Blizzard Strayer',
        '',
        NULL,
        'Cryo DMG Bonus +15%',
        'When a character attacks an opponent affected by Cryo, their CRIT Rate is increased by 20%. If the opponent is Frozen, CRIT Rate is increased by an additional 20%'
    ),
    (
        'Emblem of Severed Fate',
        '',
        NULL,
        'Energy Recharge +20%',
        'Increases Elemental Burst DMG by 25% of Energy Recharge. A maximum of 75% bonus DMG can be obtained in this way'
    );
