INSERT INTO Afk_Arena_Factions
(
name,
imageUrl,
imageSourceUrl
)
    VALUES (
           'Lightbearers',
           'factions/Lightbearers.png',
           'https://static.wikia.nocookie.net/afk-arena/images/2/22/Lightbearer.png'
           ),
           (
           'Maulers',
           'factions/Maulers.png',
           'https://static.wikia.nocookie.net/afk-arena/images/6/60/Mauler.png'
           ),
           (
           'Wilders',
           'factions/Wilders.png',
           'https://static.wikia.nocookie.net/afk-arena/images/a/ab/Wilder.png'
           ),
           (
           'Graveborns',
           'factions/Graveborns.png',
           'https://static.wikia.nocookie.net/afk-arena/images/a/a7/Graveborn.png'
           ),
           (
           'Celestials',
           'factions/Celestials.png',
           'https://static.wikia.nocookie.net/afk-arena/images/f/fc/Celestial.png'
           ),
           (
           'Hypogeans',
           'factions/Hypogeans.png',
           'https://static.wikia.nocookie.net/afk-arena/images/1/14/Hypogean.png'
           ),
           (
           'Dimensionals',
           'factions/Dimensionals.png',
           'https://static.wikia.nocookie.net/afk-arena/images/d/d8/Dimensional.png'
           );

INSERT INTO Afk_Arena_Types
(
name,
imageUrl,
imageSourceUrl
)
    VALUES (
           'Strength',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/8/8b/Strength.png'
           ),
           (
           'Intelligence',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/5/5b/Intelligence.png'
           ),
           (
           'Agility',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/1/14/Agility.png'
           );

INSERT INTO Afk_Arena_Classes
(
name,
imageUrl,
imageSourceUrl
)
    VALUES (
           'Mage',
           'classes/Mage.png',
           'https://static.wikia.nocookie.net/afk-arena/images/2/20/Mage.png'
           ),
           (
           'Tank',
           'classes/Tank.png',
           'https://static.wikia.nocookie.net/afk-arena/images/f/f9/Tank_%28Class%29.png'
           ),
           (
           'Warrior',
           'classes/Warrior.png',
           'https://static.wikia.nocookie.net/afk-arena/images/9/97/Warrior.png'
           ),
           (
           'Ranger',
           'classes/Ranger.png',
           'https://static.wikia.nocookie.net/afk-arena/images/e/e9/Ranger.png'
           ),
           (
           'Support',
           'classes/Support.png',
           'https://static.wikia.nocookie.net/afk-arena/images/a/ab/Support.png'
           );

INSERT INTO Afk_Arena_Roles
(
name,
imageUrl,
imageSourceUrl
)
    VALUES (
           'Tank',
           'roles/Tank.png',
           'https://static.wikia.nocookie.net/afk-arena/images/e/eb/Tank_%28Role%29.png'
           ),
           (
           'AoE',
           'roles/AoE.png',
           'https://static.wikia.nocookie.net/afk-arena/images/8/86/AoE.png'
           ),
           (
           'Continuous Damage',
           'roles/Continuous_Damage.png',
           'https://static.wikia.nocookie.net/afk-arena/images/d/d2/Continuous_Damage.png'
           ),
           (
           'Debuffer',
           'roles/Debuffer.png',
           'https://static.wikia.nocookie.net/afk-arena/images/f/fb/Debuffer.png'
           ),
           (
           'Control',
           'roles/Control.png',
           'https://static.wikia.nocookie.net/afk-arena/images/e/e5/Control.png'
           ),
           (
           'Buffer',
           'roles/Buffer.png',
           'https://static.wikia.nocookie.net/afk-arena/images/5/5a/Buffer.png'
           ),
           (
           'Burst Damage',
           'roles/Burst_Damage.png',
           'https://static.wikia.nocookie.net/afk-arena/images/1/1a/Burst_Damage.png'
           ),
           (
           'Regen',
           'roles/Regen.png',
           'https://static.wikia.nocookie.net/afk-arena/images/b/b2/Regen.png'
           ),
           (
           'Assassin',
           'roles/Assassin.png',
           'https://static.wikia.nocookie.net/afk-arena/images/6/69/Assassin.png'
           );

-- Data for the hero tables below comes from https://afk-arena.fandom.com/wiki/Heroes

-- Lightbearers - Ascended
INSERT INTO Afk_Arena_Heroes
(
name,
fullName,
rarity,
imageUrl,
imageSourceUrl,
factionId,
typeId,
classId,
roleId,
role2Id
)
    VALUES (
           'Estrilda',
           'Estrilda - Knight Of Valor',
           'Ascended',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/3/31/Uhlan.jpg',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Burst Damage' ),
           NULL
           ),
           (
           'Belinda',
           'Belinda - Beam Of Hope',
           'Ascended',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/b/b6/Priest.jpg',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'AoE' ),
           NULL
           ),
           (
           'Raine',
           'Raine - Death''s Denier',
           'Ascended',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/2/29/NBH2.jpg',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Buffer' ),
           NULL
           ),
           (
           'Rosaline',
           'Rosaline - The Kind',
           'Ascended',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/0/0a/Rosaline.jpg',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Buffer' ),
           NULL
           ),
           (
           'Lucius',
           'Lucius - Lightbringer',
           'Ascended',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/c/c6/OK.jpg',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Regen' ),
           NULL
           ),
           (
           'Thane',
           'Thane - The Exalted',
           'Ascended',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/1/19/SwordMaster.jpg',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Assassin' ),
           NULL
           ),
           (
           'Fawkes',
           'Fawkes - Death''s Defeat',
           'Ascended',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/c/c5/DevilHunter.jpg',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' ),
           NULL
           ),
           (
           'Hendrik',
           'Hendrik - The Defender',
           'Ascended',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/b/b7/GK.jpg',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
           NULL
           ),
           (
           'Rowan',
           'Rowan - The Roamer',
           'Ascended',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/f/fd/Rowan_Icon.png',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Buffer' ),
           NULL
           ),
           (
           'Gwyneth',
           'Gwyneth - The Fair Maiden',
           'Ascended',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/f/f4/Longbow.jpg',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
           NULL
           ),
           (
           'Rigby',
           'Rigby - The Brewmaster',
           'Ascended',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/3/39/Wino.jpg',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
           NULL
           ),
           (
           'Cecilia',
           'Cecilia - Purger of Sins',
           'Ascended',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/2/28/NunAssassin.jpg',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Assassin' ),
           NULL
           ),
           (
           'Oscar',
           'Oscar - The True Gentleman',
           'Ascended',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/9/97/HouseKeeper.jpg',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Assassin' ),
           NULL
           ),
           (
           'Eluard',
           'Eluard - Protector of Souls',
           'Ascended',
           '',
           'https://static.wikia.nocookie.net/afk-arena/images/5/59/Eluard-Icon.jpg',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'AoE' ),
           NULL
           ),
           (
           'Peggy',
           'Peggy - The Precious Pearl',
           'Ascended',
           '',
           '',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Regen' ),
           NULL
           ),
           (
           'Walker',
           'Walker - The Lone Ranger',
           'Ascended',
           '',
           '',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
           NULL
           ),
           (
           'Morrow',
           'Morrow - The Dark Crow',
           'Ascended',
           '',
           '',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' ),
           NULL
           ),
           (
           'Scarlet',
           'Scarlet - The Arcane Shadow',
           'Ascended',
           '',
           '',
           ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
           ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
           ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
           ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Burst Damage' ),
           NULL
           );

-- Lightbearers - Legendary+
INSERT INTO Afk_Arena_Heroes
(
name,
fullName,
rarity,
imageUrl,
imageSourceUrl,
factionId,
typeId,
classId,
roleId,
role2Id
)
    VALUES
        (
        'Hogan',
        'Hogan - Knight Of The Kingdom',
        'Legendary+',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' )
        ),
        (
        'Angelo',
        'Angelo - Song Of Dawn',
        'Legendary+',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Regen' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Buffer' )
        ),
        (
        'Morvus',
        'Morvus - The Far Stalker',
        'Legendary+',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Assassin' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Debuffer' )
        ),
        (
        'Mirael',
        'Mirael - The Burning Light',
        'Legendary+',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Burst Damage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'AoE' )
        );

-- Lightbearers - Common
INSERT INTO Afk_Arena_Heroes
(
name,
fullName,
rarity,
imageUrl,
imageSourceUrl,
factionId,
typeId,
classId,
roleId,
role2Id
)
    VALUES
        (
        'Merek',
        'Merek',
        'Common',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Regen' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Buffer' )
        ),
        (
        'Ulric',
        'Ulric',
        'Common',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Buffer' )
        );

-- Maulers - Ascended
INSERT INTO Afk_Arena_Heroes
(
name,
fullName,
rarity,
imageUrl,
imageSourceUrl,
factionId,
typeId,
classId,
roleId,
role2Id
)
    VALUES
        (
        'Brutus',
        'Brutus - The Blood Claw',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'Khasos',
        'Khasos - The Unruly',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Vurk',
        'Vurk - The Devious',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'AoE' ),
        NULL
        ),
        (
        'Numisu',
        'Numisu - The All Seer',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Regen' ),
        NULL
        ),
        (
        'Warek',
        'Warek - The Untamed',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Skreg',
        'Skreg - The Cunning',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'Safiya',
        'Safiya - Daughter of the Desert',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'AoE' ),
        NULL
        ),
        (
        'Satrana',
        'Satrana - Flame Weaver',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Burst Damage' ),
        NULL
        ),
        (
        'Antandra',
        'Antandra - Desert Fury',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Tidus',
        'Tidus - Shadowmane',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Skriath',
        'Skriath - The Wise One',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'AoE' ),
        NULL
        ),
        (
        'Anoki',
        'Anoki - The Blood Guard',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' ),
        NULL
        ),
        (
        'Drez',
        'Drez - The Quicksand Recluse',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Burst Damage' ),
        NULL
        ),
        (
        'Kren',
        'Kren - The Fanatical',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Thali',
        'Thali - Maniacal Mage',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Granit',
        'Granit - Desert''s Stone',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'Thesku',
        'Thesku - The Serpent Charmer',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' ),
        NULL
        ),
        (
        'Alaro',
        'Alaro - Desert''s Eye',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Buffer' ),
        NULL
        );

-- Maulers - Legendary+
INSERT INTO Afk_Arena_Heroes
(
name,
fullName,
rarity,
imageUrl,
imageSourceUrl,
factionId,
typeId,
classId,
roleId,
role2Id
)
    VALUES
        (
        'Ankhira',
        'Ankhira - Deceptive Beauty',
        'Legendary+',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Debuffer' )
        ),
        (
        'Golus',
        'Golus - The Bladestorm',
        'Legendary+',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' )
        ),
        (
        'Saveas',
        'Saveas - Strongheart',
        'Legendary+',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Burst Damage' )
        );

-- Maulers - Common
INSERT INTO Afk_Arena_Heroes
(
name,
fullName,
rarity,
imageUrl,
imageSourceUrl,
factionId,
typeId,
classId,
roleId,
role2Id
)
    VALUES
        (
        'Bloodsnarl',
        'Bloodsnarl',
        'Common',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'AoE' )
        ),
        (
        'Arkadios',
        'Arkadios',
        'Common',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Maulers' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Debuffer' )
        );

-- Wilders - Ascended
INSERT INTO Afk_Arena_Heroes
(
name,
fullName,
rarity,
imageUrl,
imageSourceUrl,
factionId,
typeId,
classId,
roleId,
role2Id
)
    VALUES
        (
        'Nemora',
        'Nemora - Nature''s Heart',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Regen' ),
        NULL
        ),
        (
        'Kaz',
        'Kaz - Hand Of The Wood',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Assassin' ),
        NULL
        ),
        (
        'Lyca',
        'Lyca - Keeper Of Glades',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Buffer' ),
        NULL
        ),
        (
        'Ulmus',
        'Ulmus - Aldermarrow',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'Gorvo',
        'Gorvo - The Indomitable',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'Eironn',
        'Eironn - Stormsword',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'AoE' ),
        NULL
        ),
        (
        'Tasi',
        'Tasi - Dreamhopper',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' ),
        NULL
        ),
        (
        'Seirus',
        'Seirus - Savior of the Sea',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'Lorsan',
        'Lorsan - Wind Whisperer',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'AoE' ),
        NULL
        ),
        (
        'Solise',
        'Solise - The Floral Wonder',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' ),
        NULL
        ),
        (
        'Saurus',
        'Saurus - The Risen Warrior',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Pippa',
        'Pippa - The Muddled Magician',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Respen',
        'Respen - The Windchild',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Burst Damage' ),
        NULL
        ),
        (
        'Raku',
        'Raku - The Rascal',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Burst Damage' ),
        NULL
        ),
        (
        'Mishka',
        'Mishka - The Wild Child',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' ),
        NULL
        ),
        (
        'Astar',
        'Astar - The Brilliant Flame',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Regen' ),
        NULL
        ),
        (
        'Oku',
        'Oku - Ironfist',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        );

-- Wilders - Legendary+
INSERT INTO Afk_Arena_Heroes
(
name,
fullName,
rarity,
imageUrl,
imageSourceUrl,
factionId,
typeId,
classId,
roleId,
role2Id
)
    VALUES
        (
        'Ira',
        'Ira - Rogue of the Forest',
        'Legendary+',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Debuffer' )
        ),
        (
        'Ogi',
        'Ogi - Nature''s Strength',
        'Legendary+',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' )
        ),
        (
        'Arden',
        'Arden - Nature''s Voice',
        'Legendary+',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Burst Damage' )
        );

-- Wilders - Common
INSERT INTO Afk_Arena_Heroes
(
name,
fullName,
rarity,
imageUrl,
imageSourceUrl,
factionId,
typeId,
classId,
roleId,
role2Id
)
    VALUES
        (
        'Dreaf',
        'Dreaf',
        'Common',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Debuffer' )
        ),
        (
        'Eletha',
        'Eletha',
        'Common',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Wilders' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'AoE' )
        );

-- Graveborns - Ascended
INSERT INTO Afk_Arena_Heroes
(
name,
fullName,
rarity,
imageUrl,
imageSourceUrl,
factionId,
typeId,
classId,
roleId,
role2Id
)
    VALUES
        (
        'Grezhul',
        'Grezhul - The Corrupted',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'Shemira',
        'Shemira - The Corpsemaker',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'AoE' ),
        NULL
        ),
        (
        'Oden',
        'Oden - Bitterblight',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'AoE' ),
        NULL
        ),
        (
        'Isabella',
        'Isabella - The Taken Soul',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Ferael',
        'Ferael - Doomwhisper',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Thoran',
        'Thoran - The Fallen King',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'Kelthur',
        'Kelthur - Plaguegrip',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Assassin' ),
        NULL
        ),
        (
        'Nara',
        'Nara - Heartcarver',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Assassin' ),
        NULL
        ),
        (
        'Baden',
        'Baden - The Abomination',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Izold',
        'Izold - The Forgotten Champion',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'Torne',
        'Torne - The Wandering Corsair',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'Daimon',
        'Daimon - The Forsaken Child',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'Theowyn',
        'Theowyn - The Wailing Widow',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Silas',
        'Silas - Augmented Death',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Buffer' ),
        NULL
        ),
        (
        'Desira',
        'Desira - The Sinister Siren',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Regen' ),
        NULL
        ),
        (
        'Hodgkin',
        'Hodgkin - The Reviled Captain',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'Treznor',
        'Treznor - The Aggrieved',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' ),
        NULL
        ),
        (
        'Fane',
        'Fane - The Wicked Warden',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Debuffer' ),
        NULL
        );

-- Graveborns - Legendary+
INSERT INTO Afk_Arena_Heroes
(
name,
fullName,
rarity,
imageUrl,
imageSourceUrl,
factionId,
typeId,
classId,
roleId,
role2Id
)
    VALUES
        (
        'Niru',
        'Niru - The Whispering Doom',
        'Legendary+',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' )
        ),
        (
        'Silvina',
        'Silvina - The Taken Breath',
        'Legendary+',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Assassin' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Burst Damage' )
        ),
        (
        'Vedan',
        'Vedan - The Demise',
        'Legendary+',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'AoE' )
        );

-- Graveborns - Common
INSERT INTO Afk_Arena_Heroes
(
name,
fullName,
rarity,
imageUrl,
imageSourceUrl,
factionId,
typeId,
classId,
roleId,
role2Id
)
    VALUES
        (
        'Steixius',
        'Steixius',
        'Common',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Debuffer' )
        ),
        (
        'Sezis',
        'Sezis',
        'Common',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Graveborns' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        NULL,
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' )
        );

-- Celestials - Ascended
INSERT INTO Afk_Arena_Heroes
(
name,
fullName,
rarity,
imageUrl,
imageSourceUrl,
factionId,
typeId,
classId,
roleId,
role2Id
)
    VALUES
        (
        'Athalia',
        'Athalia - Harbinger of Justice',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Celestials' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Assassin' ),
        NULL
        ),
        (
        'Elijah & Lailah',
        'Elijah & Lailah - Celestial Twins',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Celestials' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Buffer' ),
        NULL
        ),
        (
        'Flora',
        'Flora - The Serene Promise',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Celestials' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Orthros',
        'Orthros - The Seer of Origins',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Celestials' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'Talene',
        'Talene - The Rising Phoenix',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Celestials' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Wu Kong',
        'Wu Kong - The Monkey King',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Celestials' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Zaphrael',
        'Zaphrael - The Righteous',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Celestials' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Alna',
        'Alna - The Frozen Mother',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Celestials' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Debuffer' ),
        NULL
        ),
        (
        'Morael',
        'Morael - Queen of Stars',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Celestials' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Titus',
        'Titus - Guardian of the Mountains',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Celestials' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'Haelus',
        'Haelus - The Crafter',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Celestials' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Buffer' ),
        NULL
        ),
        (
        'Talene',
        'Talene - The Resurging Flame',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Celestials' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Buffer' ),
        NULL
        ),
        (
        'Audrae',
        'Audrae - The Chaotic Star',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Celestials' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        );

-- Hypogeans - Ascended
INSERT INTO Afk_Arena_Heroes
(
name,
fullName,
rarity,
imageUrl,
imageSourceUrl,
factionId,
typeId,
classId,
roleId,
role2Id
)
    VALUES
        (
        'Ezizh',
        'Ezizh - Hellborn',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Hypogeans' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Debuffer' ),
        NULL
        ),
        (
        'Mehira',
        'Mehira - The Mind Cager',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Hypogeans' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' ),
        NULL
        ),
        (
        'Zolrath',
        'Zolrath - Voidbinder',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Hypogeans' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Assassin' ),
        NULL
        ),
        (
        'Khazard',
        'Khazard - The Frozen Terror',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Hypogeans' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' ),
        NULL
        ),
        (
        'Mezoth',
        'Mezoth - Abysmal Butcher',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Hypogeans' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'Lucretia',
        'Lucretia - The Betrayed',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Hypogeans' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Assassin' ),
        NULL
        ),
        (
        'Mortas',
        'Mortas - The Insidious',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Hypogeans' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Regen' ),
        NULL
        ),
        (
        'Leofric',
        'Leofric - The Malevolent Menace',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Hypogeans' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Debuffer' ),
        NULL
        ),
        (
        'Zikis',
        'Zikis - The Languid',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Hypogeans' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Framton',
        'Framton - Devourer of Flames',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Hypogeans' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Ezizh',
        'Ezizh - Lord of Nightmares',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Hypogeans' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        );

-- Dimensionals - Ascended
INSERT INTO Afk_Arena_Heroes
(
name,
fullName,
rarity,
imageUrl,
imageSourceUrl,
factionId,
typeId,
classId,
roleId,
role2Id
)
    VALUES
        (
        'Arthur',
        'Arthur - Pendragon',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Dimensionals' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'Nakoruru',
        'Nakoruru - Nature''s Guardian',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Dimensionals' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Burst Damage' ),
        NULL
        ),
        (
        'Ukyo',
        'Ukyo - Wandering Swordsman',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Dimensionals' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Ezio',
        'Ezio - Auditore da Firenze',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Dimensionals' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Assassin' ),
        NULL
        ),
        (
        'Ainz Ooal Gown',
        'Ainz Ooal Gown - Magic Caster',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Dimensionals' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Burst Damage' ),
        NULL
        ),
        (
        'Albedo',
        'Albedo - The Pure-White Devil',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Dimensionals' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank' ),
        NULL
        ),
        (
        'JOKER',
        'JOKER - Leader of Few Words',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Dimensionals' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'QUEEN',
        'QUEEN - Courageous Tactician',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Dimensionals' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Strength' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage' ),
        NULL
        ),
        (
        'Prince of Persia',
        'Prince of Persia - King of Blades',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Dimensionals' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Agility' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Burst Damage' ),
        NULL
        ),
        (
        'Merlin',
        'Merlin - Seer of Destiny',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Dimensionals' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Support' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Regen' ),
        NULL
        ),
        (
        'Leonardo - da Vinci',
        'Leonardo - da Vinci',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Dimensionals' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Control' ),
        NULL
        ),
        (
        'Melusina',
        'Melusina - Baba Yaga',
        'Ascended',
        '',
        '',
        ( SELECT id FROM Afk_Arena_Factions WHERE name = 'Dimensionals' ),
        ( SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence' ),
        ( SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage' ),
        ( SELECT id FROM Afk_Arena_Roles WHERE name = 'Burst Damage' ),
        NULL
        );
