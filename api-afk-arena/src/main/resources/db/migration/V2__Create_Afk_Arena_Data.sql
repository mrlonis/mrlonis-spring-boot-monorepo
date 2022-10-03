INSERT INTO Afk_Arena_Factions
(
name,
imageUrl
)
    VALUES (
           'Lightbearers',
           'https://static.wikia.nocookie.net/afk-arena/images/2/22/Lightbearer.png'
           ),
           (
           'Maulers',
           'https://static.wikia.nocookie.net/afk-arena/images/6/60/Mauler.png'
           ),
           (
           'Wilders',
           'https://static.wikia.nocookie.net/afk-arena/images/a/ab/Wilder.png'
           ),
           (
           'Graveborns',
           'https://static.wikia.nocookie.net/afk-arena/images/a/a7/Graveborn.png'
           ),
           (
           'Celestials',
           'https://static.wikia.nocookie.net/afk-arena/images/f/fc/Celestial.png'
           ),
           (
           'Hypogeans',
           'https://static.wikia.nocookie.net/afk-arena/images/1/14/Hypogean.png'
           ),
           (
           'Dimensionals',
           'https://static.wikia.nocookie.net/afk-arena/images/d/d8/Dimensional.png'
           );

INSERT INTO Afk_Arena_Types
(
name,
imageUrl
)
    VALUES (
           'Strength',
           'https://static.wikia.nocookie.net/afk-arena/images/8/8b/Strength.png'
           ),
           (
           'Intelligence',
           'https://static.wikia.nocookie.net/afk-arena/images/5/5b/Intelligence.png'
           ),
           (
           'Agility',
           'https://static.wikia.nocookie.net/afk-arena/images/1/14/Agility.png'
           );

INSERT INTO Afk_Arena_Classes
(
name,
imageUrl
)
    VALUES (
           'Warrior',
           'https://static.wikia.nocookie.net/afk-arena/images/9/97/Warrior.png'
           ),
           (
           'Mage',
           'https://static.wikia.nocookie.net/afk-arena/images/2/20/Mage.png'
           ),
           (
           'Support',
           'https://static.wikia.nocookie.net/afk-arena/images/a/ab/Support.png'
           ),
           (
           'Tank',
           'https://static.wikia.nocookie.net/afk-arena/images/f/f9/Tank_%28Class%29.png'
           ),
           (
           'Ranger',
           'https://static.wikia.nocookie.net/afk-arena/images/e/e9/Ranger.png'
           );

INSERT INTO Afk_Arena_Roles
(
name,
imageUrl
)
    VALUES (
           'Burst Damage',
           'https://static.wikia.nocookie.net/afk-arena/images/1/1a/Burst_Damage.png'
           ),
           (
           'AoE',
           'https://static.wikia.nocookie.net/afk-arena/images/8/86/AoE.png'
           ),
           (
           'Buffer',
           'https://static.wikia.nocookie.net/afk-arena/images/5/5a/Buffer.png'
           ),
           (
           'Regen',
           'https://static.wikia.nocookie.net/afk-arena/images/b/b2/Regen.png'
           ),
           (
           'Assassin',
           'https://static.wikia.nocookie.net/afk-arena/images/6/69/Assassin.png'
           ),
           (
           'Control',
           'https://static.wikia.nocookie.net/afk-arena/images/e/e5/Control.png'
           ),
           (
           'Tank',
           'https://static.wikia.nocookie.net/afk-arena/images/e/eb/Tank_%28Role%29.png'
           ),
           (
           'Continuous Damage',
           'https://static.wikia.nocookie.net/afk-arena/images/d/d2/Continuous_Damage.png'
           ),
           (
           'Debuffer',
           'https://static.wikia.nocookie.net/afk-arena/images/f/fb/Debuffer.png'
           );

INSERT INTO Afk_Arena_Heroes
(
name,
rarity,
imageUrl,
factionId,
typeId,
classId,
roleId
)
    VALUES (
           'Estrilda',
           'Ascended',
           'https://static.wikia.nocookie.net/afk-arena/images/3/31/Uhlan.jpg',
           (SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers'),
           (SELECT id FROM Afk_Arena_Types WHERE name = 'Strength'),
           (SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior'),
           (SELECT id FROM Afk_Arena_Roles WHERE name = 'Burst Damage')
           ),
           (
           'Belinda',
           'Ascended',
           'https://static.wikia.nocookie.net/afk-arena/images/b/b6/Priest.jpg',
           (SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers'),
           (SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence'),
           (SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage'),
           (SELECT id FROM Afk_Arena_Roles WHERE name = 'AoE')
           ),
           (
           'Raine',
           'Ascended',
           'https://static.wikia.nocookie.net/afk-arena/images/2/29/NBH2.jpg',
           (SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers'),
           (SELECT id FROM Afk_Arena_Types WHERE name = 'Agility'),
           (SELECT id FROM Afk_Arena_Classes WHERE name = 'Support'),
           (SELECT id FROM Afk_Arena_Roles WHERE name = 'Buffer')
           ),
           (
           'Rosaline',
           'Ascended',
           'https://static.wikia.nocookie.net/afk-arena/images/0/0a/Rosaline.jpg',
           (SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers'),
           (SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence'),
           (SELECT id FROM Afk_Arena_Classes WHERE name = 'Support'),
           (SELECT id FROM Afk_Arena_Roles WHERE name = 'Buffer')
           ),
           (
           'Lucius',
           'Ascended',
           'https://static.wikia.nocookie.net/afk-arena/images/c/c6/OK.jpg',
           (SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers'),
           (SELECT id FROM Afk_Arena_Types WHERE name = 'Strength'),
           (SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank'),
           (SELECT id FROM Afk_Arena_Roles WHERE name = 'Regen')
           ),
           (
           'Thane',
           'Ascended',
           'https://static.wikia.nocookie.net/afk-arena/images/1/19/SwordMaster.jpg',
           (SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers'),
           (SELECT id FROM Afk_Arena_Types WHERE name = 'Agility'),
           (SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger'),
           (SELECT id FROM Afk_Arena_Roles WHERE name = 'Assassin')
           ),
           (
           'Fawkes',
           'Ascended',
           'https://static.wikia.nocookie.net/afk-arena/images/c/c5/DevilHunter.jpg',
           (SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers'),
           (SELECT id FROM Afk_Arena_Types WHERE name = 'Agility'),
           (SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger'),
           (SELECT id FROM Afk_Arena_Roles WHERE name = 'Control')
           ),
           (
           'Hendrik',
           'Ascended',
           'https://static.wikia.nocookie.net/afk-arena/images/b/b7/GK.jpg',
           (SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers'),
           (SELECT id FROM Afk_Arena_Types WHERE name = 'Strength'),
           (SELECT id FROM Afk_Arena_Classes WHERE name = 'Tank'),
           (SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank')
           ),
           (
           'Rowan',
           'Ascended',
           'https://static.wikia.nocookie.net/afk-arena/images/f/fd/Rowan_Icon.png',
           (SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers'),
           (SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence'),
           (SELECT id FROM Afk_Arena_Classes WHERE name = 'Support'),
           (SELECT id FROM Afk_Arena_Roles WHERE name = 'Buffer')
           ),
           (
           'Gwyneth',
           'Ascended',
           'https://static.wikia.nocookie.net/afk-arena/images/f/f4/Longbow.jpg',
           (SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers'),
           (SELECT id FROM Afk_Arena_Types WHERE name = 'Strength'),
           (SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger'),
           (SELECT id FROM Afk_Arena_Roles WHERE name = 'Continuous Damage')
           ),
           (
           'Rigby',
           'Ascended',
           'https://static.wikia.nocookie.net/afk-arena/images/3/39/Wino.jpg',
           (SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers'),
           (SELECT id FROM Afk_Arena_Types WHERE name = 'Strength'),
           (SELECT id FROM Afk_Arena_Classes WHERE name = 'Warrior'),
           (SELECT id FROM Afk_Arena_Roles WHERE name = 'Tank')
           ),
           (
           'Cecilia',
           'Ascended',
           'https://static.wikia.nocookie.net/afk-arena/images/2/28/NunAssassin.jpg',
           (SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers'),
           (SELECT id FROM Afk_Arena_Types WHERE name = 'Agility'),
           (SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger'),
           (SELECT id FROM Afk_Arena_Roles WHERE name = 'Assassin')
           ),
           (
           'Oscar',
           'Ascended',
           'https://static.wikia.nocookie.net/afk-arena/images/9/97/HouseKeeper.jpg',
           (SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers'),
           (SELECT id FROM Afk_Arena_Types WHERE name = 'Agility'),
           (SELECT id FROM Afk_Arena_Classes WHERE name = 'Ranger'),
           (SELECT id FROM Afk_Arena_Roles WHERE name = 'Assassin')
           ),
           (
           'Eluard',
           'Ascended',
           'https://static.wikia.nocookie.net/afk-arena/images/5/59/Eluard-Icon.jpg',
           (SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers'),
           (SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence'),
           (SELECT id FROM Afk_Arena_Classes WHERE name = 'Mage'),
           (SELECT id FROM Afk_Arena_Roles WHERE name = 'AoE')
           ),
           (
           'Peggy',
           'Ascended',
           '',
           (SELECT id FROM Afk_Arena_Factions WHERE name = 'Lightbearers'),
           (SELECT id FROM Afk_Arena_Types WHERE name = 'Intelligence'),
           (SELECT id FROM Afk_Arena_Classes WHERE name = 'Support'),
           (SELECT id FROM Afk_Arena_Roles WHERE name = 'Regen')
           );