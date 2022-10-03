CREATE TABLE Afk_Arena_Factions
(
    id             UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    name           VARCHAR(50)  NOT NULL,
    imageUrl       VARCHAR(200) NOT NULL,
    imageSourceUrl VARCHAR(200) NOT NULL,
    CONSTRAINT Afk_Arena_Factions_Unique UNIQUE ( id, name, imageUrl )
);

CREATE TABLE Afk_Arena_Types
(
    id             UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    name           VARCHAR(50)  NOT NULL,
    imageUrl       VARCHAR(200) NOT NULL,
    imageSourceUrl VARCHAR(200) NOT NULL,
    CONSTRAINT Afk_Arena_Types_Unique UNIQUE ( id, name, imageUrl )
);

CREATE TABLE Afk_Arena_Classes
(
    id             UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    name           VARCHAR(50)  NOT NULL,
    imageUrl       VARCHAR(200) NOT NULL,
    imageSourceUrl VARCHAR(200) NOT NULL,
    CONSTRAINT Afk_Arena_Classes_Unique UNIQUE ( id, name, imageUrl )
);

CREATE TABLE Afk_Arena_Roles
(
    id             UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    name           VARCHAR(50)  NOT NULL,
    imageUrl       VARCHAR(200) NOT NULL,
    imageSourceUrl VARCHAR(200) NOT NULL,
    CONSTRAINT Afk_Arena_Roles_Unique UNIQUE ( id, name, imageUrl )
);

CREATE TABLE Afk_Arena_Heroes
(
    id             UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    name           VARCHAR(50)  NOT NULL,
    fullName       VARCHAR(100) NOT NULL,
    imageUrl       VARCHAR(200),
    imageSourceUrl VARCHAR(200) NOT NULL,
    rarity         NVARCHAR(25) NOT NULL,
    factionId      UUID         NOT NULL,
    typeId         UUID         NOT NULL,
    classId        UUID,
    roleId         UUID         NOT NULL,
    role2Id        UUID,
    CONSTRAINT AfkArena_Heroes_UniqueHeroes UNIQUE ( id, name, rarity, imageUrl ),
    CONSTRAINT AfkArena_Heroes_Faction_ForeignKey FOREIGN KEY ( factionId ) REFERENCES Afk_Arena_Factions ( id ),
    CONSTRAINT AfkArena_Heroes_Type_ForeignKey FOREIGN KEY ( typeId ) REFERENCES Afk_Arena_Types ( id ),
    CONSTRAINT AfkArena_Heroes_Class_ForeignKey FOREIGN KEY ( classId ) REFERENCES Afk_Arena_Classes ( id ),
    CONSTRAINT AfkArena_Heroes_Role_ForeignKey FOREIGN KEY ( roleId ) REFERENCES Afk_Arena_Roles ( id ),
    CONSTRAINT AfkArena_Heroes_Role2_ForeignKey FOREIGN KEY ( role2Id ) REFERENCES Afk_Arena_Roles ( id )
);