INSERT INTO Genshin_Impact_Elements
    ( name, imageUrl )
VALUES
    ( 'Pyro', 'elements/Pyro.svg' ),
    ( 'Hydro', 'elements/Hydro.svg' ),
    ( 'Anemo', 'elements/Anemo.svg' ),
    ( 'Electro', 'elements/Electro.svg' ),
    ( 'Dendro', 'elements/Dendro.svg' ),
    ( 'Cryo', 'elements/Cryo.svg' ),
    ( 'Geo', 'elements/Geo.svg' );

INSERT INTO Genshin_Impact_Weapons
    ( name, imageUrl, rarity, subStat, specialAbility, weaponType )
VALUES
    ( 'Dull Blade', '', 1, 'Atk', NULL, 'Sword' ),
    ( 'Mistsplitter Reforged', '', 5, 'CRIT DMG',
      'Gain a 12% Elemental DMG Bonus for all elements and receive the might of the Mistsplitter''s Emblem. At stack levels 1/2/3, the Mistsplitter''s Emblem provides a 8/16/28% Elemental DMG Bonus for the character''s Elemental Type. The character will obtain 1 stack of Mistsplitter''s Emblem in each of the following scenarios: Normal Attack deals Elemental DMG (stack lasts 5s), casting Elemental Burst (stack lasts 10s); Energy is less than 100% (stack disappears when Energy is full). Each stack''s duration is calculated independently.',
      'Sword' ),
    ( 'Amenoma Kageuchi', '', 4, 'ATK',
      'After casting an Elemental Skill, gain 1 Succession Seed. This effect can be triggered once every 5s. The Succession Seed lasts for 30s. Up to 3 Succession Seeds may exist simultaneously. After using an Elemental Burst, all Succession Seeds are consumed and after 2s, the character regenerates 6 Energy for each seed consumed.',
      'Sword' );

INSERT INTO Genshin_Impact_Artifact_Sets
    ( name, imageUrl, onePiece, twoPiece, fourPiece )
VALUES
    ( 'Adventurer', '', NULL, 'Max HP increased by 1000', 'Opening a chest regenerates 30% Max HP over 5s' ),
    ( 'Blizzard Strayer', '', NULL, 'Cryo DMG Bonus +15%',
      'When a character attacks an opponent affected by Cryo, their CRIT Rate is increased by 20%. If the opponent is Frozen, CRIT Rate is increased by an additional 20%' ),
    ( 'Emblem of Severed Fate', '', NULL, 'Energy Recharge +20%',
      'Increases Elemental Burst DMG by 25% of Energy Recharge. A maximum of 75% bonus DMG can be obtained in this way' );

INSERT INTO Genshin_Impact_Characters
    ( name, imageUrl, rarity, elementId, weaponOneId, weaponTwoId, artifactSetOneId, artifactSetTwoId )
VALUES
    ('Kamisato Ayaka', 'characters/Ayaka.png', 5,
      (SELECT id FROM Genshin_Impact_Elements WHERE name = 'Cryo'),
      (SELECT id FROM Genshin_Impact_Weapons WHERE name = 'Mistsplitter Reforged'),
      (SELECT id FROM Genshin_Impact_Weapons WHERE name = 'Amenoma Kageuchi'),
      (SELECT id FROM Genshin_Impact_Artifact_Sets WHERE name = 'Blizzard Strayer'),
      (SELECT id FROM Genshin_Impact_Artifact_Sets WHERE name = 'Emblem of Severed Fate'));
