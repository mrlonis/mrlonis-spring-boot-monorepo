CREATE TABLE AfkArena_Heroes
(
    HeroId bigint NOT NULL IDENTITY ( 1,1 ) ,
    FactionId bigint NOT NULL ,
    HeroRarity nvarchar(25) NOT NULL ,
    HeroImageUrl nvarchar(200) ,
    HeroName nvarchar(50) NOT NULL ,
    TypeId bigint NOT NULL ,
    ClassId bigint NOT NULL ,
    RoleId bigint NOT NULL ,
    CONSTRAINT AfkArena_Heroes_PrimaryKey PRIMARY KEY  CLUSTERED (HeroId ASC),
    CONSTRAINT AfkArena_Heroes_UniqueHeroes UNIQUE (HeroId  ASC, HeroRarity ASC, HeroName ASC),
    CONSTRAINT AfkArena_Heroes_Faction_ForeignKey FOREIGN KEY (FactionId) REFERENCES AfkArena_Factions (FactionId),
    CONSTRAINT AfkArena_Heroes_Type_ForeignKey FOREIGN KEY (TypeId) REFERENCES AfkArena_Types (TypeId),
    CONSTRAINT AfkArena_Heroes_Class_ForeignKey FOREIGN KEY (ClassId) REFERENCES AfkArena_Classes (ClassId),
    CONSTRAINT AfkArena_Heroes_Role_ForeignKey FOREIGN KEY (RoleId) REFERENCES AfkArena_Roles (RoleId)
)
GO
-- Factions
--  - Lightbearers   - 1
--  - Maulers        - 2
--  - Wilders        - 3
--  - Graveborns     - 4
--  - Celestials     - 5
--  - Hypogeans      - 6
--  - Dimensionals   - 7
--
-- Types
--   - Strength - 1
--   - Intelligence - 2
--   - Agility - 3
--
-- Classes
--   - Warrior   - 1
--   - Mage      - 2
--   - Support   - 3
--   - Tank      - 4
--   - Ranger    - 5
--
-- Roles
--  - Burst Damage        - 1
--  - AoE                 - 2
--  - Buffer              - 3
--  - Regen               - 4
--  - Assassin            - 5
--  - Control             - 6
--  - Tank                - 7
--  - Continuous Damage   - 8
--  - Debuffer            - 9
INSERT INTO AfkArena_Heroes
    (FactionId, HeroRarity, HeroImageUrl, HeroName, TypeId, ClassId, RoleId)
VALUES
    (1, 'Ascended', 'https://static.wikia.nocookie.net/afk-arena/images/3/31/Uhlan.jpg', 'Estrilda - Knight Of Valor', 1, 1, 1),
    (1, 'Ascended', 'https://static.wikia.nocookie.net/afk-arena/images/b/b6/Priest.jpg', 'Belinda - Beam Of Hope', 2, 2, 2),
    (1, 'Ascended', 'https://static.wikia.nocookie.net/afk-arena/images/2/29/NBH2.jpg', 'Raine - Death''s Denier', 3, 3, 3),
    (1, 'Ascended', 'https://static.wikia.nocookie.net/afk-arena/images/0/0a/Rosaline.jpg', 'Rosaline - The Kind', 2, 3, 3),
    (1, 'Ascended', 'https://static.wikia.nocookie.net/afk-arena/images/c/c6/OK.jpg', 'Lucius - Lightbringer', 1, 4, 4),
    (1, 'Ascended', 'https://static.wikia.nocookie.net/afk-arena/images/1/19/SwordMaster.jpg', 'Thane - The Exalted', 3, 5, 5),
    (1, 'Ascended', 'https://static.wikia.nocookie.net/afk-arena/images/c/c5/DevilHunter.jpg', 'Fawkes - Death''s Defeat', 3, 5, 6),
    (1, 'Ascended', 'https://static.wikia.nocookie.net/afk-arena/images/b/b7/GK.jpg', 'Hendrik - The Defender', 1, 4, 7),
    (1, 'Ascended', 'https://static.wikia.nocookie.net/afk-arena/images/f/fd/Rowan_Icon.png', 'Rowan - The Roamer', 2, 3, 3),
    (1, 'Ascended', 'https://static.wikia.nocookie.net/afk-arena/images/f/f4/Longbow.jpg', 'Gwyneth - The Fair Maiden', 1, 5, 8),
    (1, 'Ascended', 'https://static.wikia.nocookie.net/afk-arena/images/3/39/Wino.jpg', 'Rigby - The Brewmaster', 1, 1, 7),
    (1, 'Ascended', 'https://static.wikia.nocookie.net/afk-arena/images/2/28/NunAssassin.jpg', 'Cecilia - Purger of Sins', 3, 5, 5),
    (1, 'Ascended', 'https://static.wikia.nocookie.net/afk-arena/images/9/97/HouseKeeper.jpg', 'Oscar - The True Gentleman', 3, 5, 5),
    (1, 'Ascended', 'https://static.wikia.nocookie.net/afk-arena/images/5/59/Eluard-Icon.jpg', 'Eluard - Protector of Souls', 2, 2, 2),
    (1, 'Ascended', '', 'Peggy - The Precious Pearl', 2, 3, 4);