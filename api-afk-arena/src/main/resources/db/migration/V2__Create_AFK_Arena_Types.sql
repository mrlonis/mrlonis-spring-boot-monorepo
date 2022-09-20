CREATE TABLE AfkArena_Types
(
    TypeId       bigint NOT NULL IDENTITY ( 1,1 ),
    TypeName     nvarchar(15) NOT NULL,
    TypeImageUrl nvarchar(200),
    CONSTRAINT AfkArena_Types_PrimaryKey PRIMARY KEY CLUSTERED (TypeId ASC),
    CONSTRAINT AfkArena_Types_Unique UNIQUE (TypeId ASC, TypeName ASC, TypeImageUrl ASC)
) GO

INSERT INTO AfkArena_Types
    (TypeName, TypeImageUrl)
VALUES
    ('Strength', 'https://static.wikia.nocookie.net/afk-arena/images/8/8b/Strength.png'),
    ('Intelligence', 'https://static.wikia.nocookie.net/afk-arena/images/5/5b/Intelligence.png'),
    ('Agility', 'https://static.wikia.nocookie.net/afk-arena/images/1/14/Agility.png');