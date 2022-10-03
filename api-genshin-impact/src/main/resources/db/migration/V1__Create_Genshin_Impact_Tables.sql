CREATE EXTENSION pgcrypto;

CREATE TABLE Genshin_Impact_Elements
(
    id       UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name     VARCHAR(50)  NOT NULL,
    imageUrl VARCHAR(200) NOT NULL,
    CONSTRAINT Genshin_Impact_Elements_Unique UNIQUE (id, name, imageUrl)
);

CREATE TABLE Genshin_Impact_Weapons
(
    id             UUID PRIMARY KEY DEFAULT gen_random_uuid(),
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
    id        UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name      VARCHAR(50)  NOT NULL,
    imageUrl  VARCHAR(200) NOT NULL,
    onePiece  VARCHAR(500),
    twoPiece  VARCHAR(500),
    fourPiece VARCHAR(500),
    CONSTRAINT Genshin_Impact_Artifact_Sets_Unique UNIQUE (id, name, imageUrl)
);

CREATE TABLE Genshin_Impact_Characters
(
    id               UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name             VARCHAR(50) NOT NULL,
    imageUrl         VARCHAR(200),
    rarity           INT         NOT NULL,
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