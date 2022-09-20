CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE Afk_Arena_Factions
(
    id       UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name     varchar(50)  NOT NULL,
    imageUrl varchar(200) NOT NULL,
    CONSTRAINT Afk_Arena_Factions_Unique UNIQUE (id, name, imageUrl)
);

CREATE TABLE Afk_Arena_Types
(
    id       UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name     varchar(50)  NOT NULL,
    imageUrl varchar(200) NOT NULL,
    CONSTRAINT Afk_Arena_Types_Unique UNIQUE (id, name, imageUrl)
);

CREATE TABLE Afk_Arena_Classes
(
    id       UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name     varchar(50)  NOT NULL,
    imageUrl varchar(200) NOT NULL,
    CONSTRAINT Afk_Arena_Classes_Unique UNIQUE (id, name, imageUrl)
);

CREATE TABLE Afk_Arena_Roles
(
    id       UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name     varchar(50)  NOT NULL,
    imageUrl varchar(200) NOT NULL,
    CONSTRAINT Afk_Arena_Roles_Unique UNIQUE (id, name, imageUrl)
);

CREATE TABLE Afk_Arena_Heroes
(
    id        UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name      varchar(50)  NOT NULL,
    imageUrl  varchar(200),
    rarity    nvarchar(25) NOT NULL,
    factionId UUID         NOT NULL,
    typeId    UUID         NOT NULL,
    classId   UUID         NOT NULL,
    roleId    UUID         NOT NULL,
    CONSTRAINT AfkArena_Heroes_UniqueHeroes UNIQUE (id, name, rarity, imageUrl),
    CONSTRAINT AfkArena_Heroes_Faction_ForeignKey FOREIGN KEY (factionId) REFERENCES Afk_Arena_Factions (id),
    CONSTRAINT AfkArena_Heroes_Type_ForeignKey FOREIGN KEY (typeId) REFERENCES Afk_Arena_Types (id),
    CONSTRAINT AfkArena_Heroes_Class_ForeignKey FOREIGN KEY (classId) REFERENCES Afk_Arena_Classes (id),
    CONSTRAINT AfkArena_Heroes_Role_ForeignKey FOREIGN KEY (roleId) REFERENCES Afk_Arena_Roles (id)
);