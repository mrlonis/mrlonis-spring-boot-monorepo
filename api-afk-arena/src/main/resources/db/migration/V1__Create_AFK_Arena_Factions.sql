CREATE TABLE AfkArena_Factions
(
    FactionId       bigint NOT NULL IDENTITY ( 1,1 ),
    FactionName     nvarchar(15) NOT NULL,
    FactionImageUrl nvarchar(200),
    CONSTRAINT AfkArena_Factions_PrimaryKey PRIMARY KEY CLUSTERED (FactionId ASC),
    CONSTRAINT AfkArena_Factions_Unique UNIQUE (FactionId ASC, FactionName ASC, FactionImageUrl ASC)
) GO

INSERT INTO AfkArena_Factions
    (FactionName, FactionImageUrl)
VALUES
    ('Lightbearers', 'https://static.wikia.nocookie.net/afk-arena/images/2/22/Lightbearer.png'),
    ('Maulers', 'https://static.wikia.nocookie.net/afk-arena/images/6/60/Mauler.png'),
    ('Wilders', 'https://static.wikia.nocookie.net/afk-arena/images/a/ab/Wilder.png'),
    ('Graveborns', 'https://static.wikia.nocookie.net/afk-arena/images/a/a7/Graveborn.png'),
    ('Celestials', 'https://static.wikia.nocookie.net/afk-arena/images/f/fc/Celestial.png'),
    ('Hypogeans', 'https://static.wikia.nocookie.net/afk-arena/images/1/14/Hypogean.png'),
    ('Dimensionals', 'https://static.wikia.nocookie.net/afk-arena/images/d/d8/Dimensional.png');