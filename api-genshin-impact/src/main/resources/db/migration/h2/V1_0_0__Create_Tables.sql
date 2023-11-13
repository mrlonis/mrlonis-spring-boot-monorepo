CREATE TABLE Elements (
    id UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    imageUrl VARCHAR(200) NOT NULL,
    CONSTRAINT Elements_Unique UNIQUE (name)
);

CREATE TABLE Weapons (
    id UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
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
    id UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    -- TODO: NOT NULL
    imageUrl VARCHAR(200),
    onePieceSetEffect VARCHAR(500),
    twoPieceSetEffect VARCHAR(500),
    fourPieceSetEffect VARCHAR(1500),
    CONSTRAINT Artifacts_Unique UNIQUE (name)
);

CREATE TABLE Characters (
    id UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    imageUrl VARCHAR(200),
    rarity INT NOT NULL,
    weaponType VARCHAR(15) NOT NULL,
    elementId UUID NOT NULL,
    sandsStatOne VARCHAR(50) NOT NULL,
    sandsStatTwo VARCHAR(50),
    gobletStatOne VARCHAR(50) NOT NULL,
    gobletStatTwo VARCHAR(50),
    circletStatOne VARCHAR(50) NOT NULL,
    circletStatTwo VARCHAR(50),
    substatOne VARCHAR(50) NOT NULL,
    substatTwo VARCHAR(50) NOT NULL,
    substatThree VARCHAR(50) NOT NULL,
    weaponOneId UUID NOT NULL,
    weaponTwoId UUID,
    weaponThreeId UUID,
    weaponFourId UUID,
    weaponFiveId UUID,
    artifactSetOneIdFirst UUID NOT NULL,
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
