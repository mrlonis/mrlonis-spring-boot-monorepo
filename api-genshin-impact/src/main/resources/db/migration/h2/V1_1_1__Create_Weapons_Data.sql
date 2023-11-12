INSERT INTO Weapons (
        name,
        imageUrl,
        rarity,
        weaponType,
        substatType,
        weaponAffix,
        affixDescription,
        description
    )
VALUES (
        'Dull Blade',
        '',
        1,
        'Sword',
        'Atk',
        NULL,
        NULL,
        'Youthful dreams and the thrill of adventure. If this isn''t enough, then make it up with valiance.'
    ),
    (
        'Mistsplitter Reforged',
        '',
        5,
        'Sword',
        'CRIT DMG',
        'Mistsplitter''s Edge',
        'Gain a 12% Elemental DMG Bonus for all elements and receive the might of the Mistsplitter''s Emblem. At stack levels 1/2/3, the Mistsplitter''s Emblem provides a 8/16/28% Elemental DMG Bonus for the character''s Elemental Type. The character will obtain 1 stack of Mistsplitter''s Emblem in each of the following scenarios: Normal Attack deals Elemental DMG (stack lasts 5s), casting Elemental Burst (stack lasts 10s); Energy is less than 100% (stack disappears when Energy is full). Each stack''s duration is calculated independently.',
        'A sword that blazes with a fierce violet light. The name "Reforged" comes from it having been broken once before.'
    ),
    (
        'Amenoma Kageuchi',
        '',
        4,
        'Sword',
        'ATK',
        'Iwakura Succession',
        'After casting an Elemental Skill, gain 1 Succession Seed. This effect can be triggered once every 5s. The Succession Seed lasts for 30s. Up to 3 Succession Seeds may exist simultaneously. After using an Elemental Burst, all Succession Seeds are consumed and after 2s, the character regenerates 6 Energy for each seed consumed.',
        'A blade custom made for a famed samurai who could strike down a tengu warrior, known for their incredible agility, in midair.'
    );