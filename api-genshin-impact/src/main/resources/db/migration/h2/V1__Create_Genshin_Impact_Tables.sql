CREATE TABLE Elements
(
    id       UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    name     VARCHAR(50)  NOT NULL,
    imageUrl VARCHAR(200) NOT NULL,
    CONSTRAINT Elements_Unique UNIQUE ( name )
);

CREATE TABLE Weapons
(
    id               UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    name             VARCHAR(50)  NOT NULL,
    imageUrl         VARCHAR(200) NOT NULL,
    rarity           INT          NOT NULL,
    weaponType       VARCHAR(15)  NOT NULL,
    substatType      VARCHAR(50)  NOT NULL,
    weaponAffix      VARCHAR(750),
    affixDescription VARCHAR(750),
    description      VARCHAR(750),
    CONSTRAINT Weapons_Unique UNIQUE ( name )
);

CREATE TABLE Artifacts
(
    id                 UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    name               VARCHAR(50)  NOT NULL,
    imageUrl           VARCHAR(200) NOT NULL,
    onePieceSetEffect  VARCHAR(500),
    twoPieceSetEffect  VARCHAR(500),
    fourPieceSetEffect VARCHAR(500),
    CONSTRAINT Artifacts_Unique UNIQUE ( name )
);

CREATE TABLE Artifact_Sets
(
    id            UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    artifactOneId UUID         NOT NULL,
    artifactTwoId UUID,
    CONSTRAINT Artifact_Sets_Unique UNIQUE ( artifactOneId, artifactTwoId ),
    CONSTRAINT Artifact_One_Foreign_Key FOREIGN KEY ( artifactOneId ) REFERENCES Artifacts ( id ),
    CONSTRAINT Artifact_Two_Foreign_Key FOREIGN KEY ( artifactTwoId ) REFERENCES Artifacts ( id )
);

CREATE TABLE Characters
(
    id                 UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    name               VARCHAR(50)  NOT NULL,
    imageUrl           VARCHAR(200),
    rarity             INT          NOT NULL,
    elementId          UUID         NOT NULL,
    weaponOneId        UUID         NOT NULL,
    weaponTwoId        UUID,
    weaponThreeId      UUID,
    weaponFourId       UUID,
    weaponFiveId       UUID,
    artifactSetOneId   UUID         NOT NULL,
    artifactSetTwoId   UUID,
    artifactSetThreeId UUID,
    artifactSetFourId  UUID,
    artifactSetFiveId  UUID,
    CONSTRAINT Characters_Unique UNIQUE ( id, name, imageUrl ),
    CONSTRAINT Elements_Foreign_Key FOREIGN KEY ( elementId ) REFERENCES Elements ( id ),
    CONSTRAINT Weapon_One_Foreign_Key FOREIGN KEY ( weaponOneId ) REFERENCES Weapons ( id ),
    CONSTRAINT Weapon_Two_Foreign_Key FOREIGN KEY ( weaponTwoId ) REFERENCES Weapons ( id ),
    CONSTRAINT Weapon_Three_Foreign_Key FOREIGN KEY ( weaponThreeId ) REFERENCES Weapons ( id ),
    CONSTRAINT Weapon_Four_Foreign_Key FOREIGN KEY ( weaponFourId ) REFERENCES Weapons ( id ),
    CONSTRAINT Weapon_Five_Foreign_Key FOREIGN KEY ( weaponFiveId ) REFERENCES Weapons ( id ),
    CONSTRAINT Artifact_Set_One_Foreign_Key FOREIGN KEY ( artifactSetOneId ) REFERENCES Artifact_Sets ( id ),
    CONSTRAINT Artifact_Set_Two_Foreign_Key FOREIGN KEY ( artifactSetTwoId ) REFERENCES Artifact_Sets ( id ),
    CONSTRAINT Artifact_Set_Three_Foreign_Key FOREIGN KEY ( artifactSetThreeId ) REFERENCES Artifact_Sets ( id ),
    CONSTRAINT Artifact_Set_Four_Foreign_Key FOREIGN KEY ( artifactSetFourId ) REFERENCES Artifact_Sets ( id ),
    CONSTRAINT Artifact_Set_Five_Foreign_Key FOREIGN KEY ( artifactSetFiveId ) REFERENCES Artifact_Sets ( id )
);