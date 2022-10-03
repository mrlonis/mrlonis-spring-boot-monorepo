CREATE TABLE Genshin_Impact_Elements
(
    id       UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name     VARCHAR(50)  NOT NULL,
    imageUrl VARCHAR(200) NOT NULL,
    CONSTRAINT Genshin_Impact_Elements_Unique UNIQUE (id, name, imageUrl)
);

CREATE TABLE Genshin_Impact_Weapons
(
    id             UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name           VARCHAR(50)  NOT NULL,
    imageUrl       VARCHAR(200) NOT NULL,
    rarity         INT          NOT NULL,
    subStat        VARCHAR(50),
    specialAbility VARCHAR(750),
    weaponType     VARCHAR(15)  NOT NULL,
    CONSTRAINT Genshin_Impact_Weapons_Unique UNIQUE (id, name, imageUrl)
);

CREATE TABLE Genshin_Impact_Artifact_Sets
(
    id        UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name      VARCHAR(50)  NOT NULL,
    imageUrl  VARCHAR(200) NOT NULL,
    onePiece  VARCHAR(500),
    twoPiece  VARCHAR(500),
    fourPiece VARCHAR(500),
    CONSTRAINT Genshin_Impact_Artifact_Sets_Unique UNIQUE (id, name, imageUrl)
);

CREATE TABLE Genshin_Impact_Characters
(
    id               UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name             VARCHAR(50) NOT NULL,
    imageUrl         VARCHAR(200),
    rarity           INT         NOT NULL,
    elementId        UUID        NOT NULL,
    weaponOneId      UUID        NOT NULL,
    weaponTwoId      UUID,
    artifactSetOneId UUID        NOT NULL,
    artifactSetTwoId UUID,
    CONSTRAINT Genshin_Impact_Characters_Unique UNIQUE (id, name, imageUrl),
    CONSTRAINT Genshin_Impact_Elements_Foreign_Key FOREIGN KEY (elementId) REFERENCES Genshin_Impact_Elements (id),
    CONSTRAINT Genshin_Impact_Weapons_Foreign_Key_One FOREIGN KEY (weaponOneId) REFERENCES Genshin_Impact_Weapons (id),
    CONSTRAINT Genshin_Impact_Weapons_Foreign_Key_Two FOREIGN KEY (weaponTwoId) REFERENCES Genshin_Impact_Weapons (id),
    CONSTRAINT Genshin_Impact_Artifact_Sets_Foreign_Key_One FOREIGN KEY (artifactSetOneId) REFERENCES Genshin_Impact_Artifact_Sets (id),
    CONSTRAINT Genshin_Impact_Artifact_Sets_Foreign_Key_Two FOREIGN KEY (artifactSetTwoId) REFERENCES Genshin_Impact_Artifact_Sets (id)
);