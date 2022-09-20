CREATE TABLE AfkArena_Roles
(
    RoleId       bigint NOT NULL IDENTITY ( 1,1 ),
    RoleName     nvarchar(25) NOT NULL,
    RoleImageUrl nvarchar(200),
    CONSTRAINT AfkArena_Roles_PrimaryKey PRIMARY KEY CLUSTERED (RoleId ASC),
    CONSTRAINT AfkArena_Roles_Unique UNIQUE (RoleId ASC, RoleName ASC, RoleImageUrl ASC)
) GO

INSERT INTO AfkArena_Roles
    (RoleName, RoleImageUrl)
VALUES
    ('Burst Damage', 'https://static.wikia.nocookie.net/afk-arena/images/1/1a/Burst_Damage.png'),
    ('AoE', 'https://static.wikia.nocookie.net/afk-arena/images/8/86/AoE.png'),
    ('Buffer', 'https://static.wikia.nocookie.net/afk-arena/images/5/5a/Buffer.png'),
    ('Regen', 'https://static.wikia.nocookie.net/afk-arena/images/b/b2/Regen.png'),
    ('Assassin', 'https://static.wikia.nocookie.net/afk-arena/images/6/69/Assassin.png'),
    ('Control', 'https://static.wikia.nocookie.net/afk-arena/images/e/e5/Control.png'),
    ('Tank', 'https://static.wikia.nocookie.net/afk-arena/images/e/eb/Tank_%28Role%29.png'),
    ('Continuous Damage', 'https://static.wikia.nocookie.net/afk-arena/images/d/d2/Continuous_Damage.png'),
    ('Debuffer', 'https://static.wikia.nocookie.net/afk-arena/images/f/fb/Debuffer.png');