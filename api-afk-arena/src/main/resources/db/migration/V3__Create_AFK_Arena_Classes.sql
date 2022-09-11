CREATE TABLE AfkArena_Classes
(
    ClassId bigint NOT NULL IDENTITY ( 1,1 ) ,
    ClassName nvarchar(15) NOT NULL ,
    ClassImageUrl nvarchar(200) ,
    CONSTRAINT AfkArena_Classes_PrimaryKey PRIMARY KEY CLUSTERED (ClassId ASC),
    CONSTRAINT AfkArena_Classes_Unique UNIQUE (ClassId ASC, ClassName ASC, ClassImageUrl ASC)
)
GO

INSERT INTO AfkArena_Classes
    (ClassName, ClassImageUrl)
VALUES
    ('Warrior', 'https://static.wikia.nocookie.net/afk-arena/images/9/97/Warrior.png'),
    ('Mage', 'https://static.wikia.nocookie.net/afk-arena/images/2/20/Mage.png'),
    ('Support', 'https://static.wikia.nocookie.net/afk-arena/images/a/ab/Support.png'),
    ('Tank', 'https://static.wikia.nocookie.net/afk-arena/images/f/f9/Tank_%28Class%29.png'),
    ('Ranger', 'https://static.wikia.nocookie.net/afk-arena/images/e/e9/Ranger.png');