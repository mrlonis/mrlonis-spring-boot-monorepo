CREATE TABLE Genshin_Impact_Elements
(
    id       UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name     varchar(50)  NOT NULL,
    imageUrl varchar(200) NOT NULL,
    CONSTRAINT MythicHeroes_Factions_Unique UNIQUE (id, name, imageUrl)
);

CREATE TABLE Genshin_Impact_Weapons
(
    id             UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name           varchar(50)  NOT NULL,
    imageUrl       varchar(200) NOT NULL,
    rarity         int          NOT NULL,
    subStat        varchar(50),
    specialAbility varchar(750),
    weaponType     varchar(15)  NOT NULL,
    CONSTRAINT Genshin_Impact_Weapons_Unique UNIQUE (id, name, imageUrl)
);

CREATE TABLE Genshin_Impact_Artifact_Sets
(
    id        UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name      varchar(50)  NOT NULL,
    imageUrl  varchar(200) NOT NULL,
    onePiece  varchar(500),
    twoPiece  varchar(500),
    fourPiece varchar(500),
    CONSTRAINT Genshin_Impact_Artifact_Sets_Unique UNIQUE (id, name, imageUrl)
);

CREATE TABLE Genshin_Impact_Characters
(
    id               UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name             varchar(50) NOT NULL,
    imageUrl         varchar(200),
    rarity           int         NOT NULL,
    elementId        UUID        NOT NULL,
    weaponOneId      uuid        NOT NULL,
    weaponTwoId      uuid,
    artifactSetOneId uuid        NOT NULL,
    artifactSetTwoId uuid,
    CONSTRAINT Genshin_Impact_Characters_Unique UNIQUE (id, name, imageUrl),
    CONSTRAINT Genshin_Impact_Elements_Foreign_Key FOREIGN KEY (elementId) REFERENCES Genshin_Impact_Elements (id),
    CONSTRAINT Genshin_Impact_Weapons_Foreign_Key_One FOREIGN KEY (weaponOneId) REFERENCES Genshin_Impact_Weapons (id),
    CONSTRAINT Genshin_Impact_Weapons_Foreign_Key_Two FOREIGN KEY (weaponTwoId) REFERENCES Genshin_Impact_Weapons (id),
    CONSTRAINT Genshin_Impact_Artifact_Sets_Foreign_Key_One FOREIGN KEY (artifactSetOneId) REFERENCES Genshin_Impact_Artifact_Sets (id),
    CONSTRAINT Genshin_Impact_Artifact_Sets_Foreign_Key_Two FOREIGN KEY (artifactSetTwoId) REFERENCES Genshin_Impact_Artifact_Sets (id)
);