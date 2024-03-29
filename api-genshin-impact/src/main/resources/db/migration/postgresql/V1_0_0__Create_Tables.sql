CREATE EXTENSION pgcrypto;

CREATE TABLE Elements (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(50) NOT NULL,
    imageUrl VARCHAR(200) NOT NULL,
    CONSTRAINT Elements_Unique UNIQUE (name)
);

CREATE TABLE Weapons (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(50) NOT NULL,
    -- TODO: NOT NULL
    imageUrl VARCHAR(200),
    rarity INT NOT NULL,
    weaponType VARCHAR(15) NOT NULL,
    secondaryStat VARCHAR(50),
    weaponAffix VARCHAR(750),
    affixDescription VARCHAR(1500),
    description VARCHAR(750),
    CONSTRAINT Weapons_Unique UNIQUE (name)
);

CREATE TABLE Artifacts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(50) NOT NULL,
    -- TODO: NOT NULL
    imageUrl VARCHAR(200),
    onePieceSetEffect VARCHAR(500),
    twoPieceSetEffect VARCHAR(500),
    fourPieceSetEffect VARCHAR(1500),
    CONSTRAINT Artifacts_Unique UNIQUE (name)
);

CREATE TABLE Characters (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(50) NOT NULL,
    -- TODO: NOT NULL
    imageUrl VARCHAR(200),
    rarity INT NOT NULL,
    elementId UUID NOT NULL,
    weaponType VARCHAR(15) NOT NULL,
    -- TODO: NOT NULL
    sandsStatOne VARCHAR(50),
    sandsStatTwo VARCHAR(50),
    sandsStatThree VARCHAR(50),
    -- TODO: NOT NULL
    gobletStatOne VARCHAR(50),
    gobletStatTwo VARCHAR(50),
    gobletStatThree VARCHAR(50),
    -- TODO: NOT NULL
    circletStatOne VARCHAR(50),
    circletStatTwo VARCHAR(50),
    circletStatThree VARCHAR(50),
    -- TODO: NOT NULL
    substatOne VARCHAR(50),
    -- TODO: NOT NULL
    substatTwo VARCHAR(50),
    -- TODO: NOT NULL
    substatThree VARCHAR(50),
    -- TODO: NOT NULL
    weaponOneId UUID,
    weaponTwoId UUID,
    weaponThreeId UUID,
    weaponFourId UUID,
    weaponFiveId UUID,
    -- TODO: NOT NULL
    artifactSetOneIdFirst UUID,
    artifactSetOneIdSecond UUID,
    artifactSetTwoIdFirst UUID,
    artifactSetTwoIdSecond UUID,
    artifactSetThreeIdFirst UUID,
    artifactSetThreeIdSecond UUID,
    artifactSetFourIdFirst UUID,
    artifactSetFourIdSecond UUID,
    artifactSetFiveIdFirst UUID,
    artifactSetFiveIdSecond UUID,
    CONSTRAINT Characters_Unique UNIQUE (id, name, imageUrl),
    CONSTRAINT Elements_Foreign_Key FOREIGN KEY (elementId) REFERENCES Elements (id),
    CONSTRAINT Weapon_One_Foreign_Key FOREIGN KEY (weaponOneId) REFERENCES Weapons (id),
    CONSTRAINT Weapon_Two_Foreign_Key FOREIGN KEY (weaponTwoId) REFERENCES Weapons (id),
    CONSTRAINT Weapon_Three_Foreign_Key FOREIGN KEY (weaponThreeId) REFERENCES Weapons (id),
    CONSTRAINT Weapon_Four_Foreign_Key FOREIGN KEY (weaponFourId) REFERENCES Weapons (id),
    CONSTRAINT Weapon_Five_Foreign_Key FOREIGN KEY (weaponFiveId) REFERENCES Weapons (id),
    CONSTRAINT Artifact_Set_One_First_Foreign_Key FOREIGN KEY (artifactSetOneIdFirst) REFERENCES Artifacts (id),
    CONSTRAINT Artifact_Set_One_Second_Foreign_Key FOREIGN KEY (artifactSetOneIdSecond) REFERENCES Artifacts (id),
    CONSTRAINT Artifact_Set_Two_First_Foreign_Key FOREIGN KEY (artifactSetTwoIdFirst) REFERENCES Artifacts (id),
    CONSTRAINT Artifact_Set_Two_Second_Foreign_Key FOREIGN KEY (artifactSetTwoIdSecond) REFERENCES Artifacts (id),
    CONSTRAINT Artifact_Set_Three_First_Foreign_Key FOREIGN KEY (artifactSetThreeIdFirst) REFERENCES Artifacts (id),
    CONSTRAINT Artifact_Set_Three_Second_Foreign_Key FOREIGN KEY (artifactSetThreeIdSecond) REFERENCES Artifacts (id),
    CONSTRAINT Artifact_Set_Four_First_Foreign_Key FOREIGN KEY (artifactSetFourIdFirst) REFERENCES Artifacts (id),
    CONSTRAINT Artifact_Set_Four_Second_Foreign_Key FOREIGN KEY (artifactSetFourIdSecond) REFERENCES Artifacts (id),
    CONSTRAINT Artifact_Set_Five_First_Foreign_Key FOREIGN KEY (artifactSetFiveIdFirst) REFERENCES Artifacts (id),
    CONSTRAINT Artifact_Set_Five_Second_Foreign_Key FOREIGN KEY (artifactSetFiveIdSecond) REFERENCES Artifacts (id)
);
