CREATE TABLE Combat_Types (
    id UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    imageUrl VARCHAR(200) NOT NULL,
    description VARCHAR(500) NOT NULL,
    CONSTRAINT Combat_Types_Unique UNIQUE (name)
);

CREATE TABLE Combat_Paths (
    id UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    imageUrl VARCHAR(200) NOT NULL,
    description VARCHAR(500) NOT NULL,
    CONSTRAINT Combat_Paths_Unique UNIQUE (name)
);

CREATE TABLE Light_Cones (
    id UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    imageUrl VARCHAR(200) NOT NULL,
    rarity INT NOT NULL,
    combatPathId UUID NOT NULL,
    skill VARCHAR(750) NOT NULL,
    CONSTRAINT Light_Cones_Unique UNIQUE (name),
    CONSTRAINT Combat_Paths_Foreign_Key FOREIGN KEY (combatPathId) REFERENCES Combat_Paths (id)
);

CREATE TABLE Relics (
    id UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    imageUrl VARCHAR(200) NOT NULL,
    twoPieceSetEffect VARCHAR(500) NOT NULL,
    fourPieceSetEffect VARCHAR(500) NOT NULL,
    CONSTRAINT Relics_Unique UNIQUE (name)
);

CREATE TABLE Ornaments (
    id UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    imageUrl VARCHAR(200) NOT NULL,
    twoPieceSetEffect VARCHAR(500) NOT NULL,
    CONSTRAINT Ornaments_Unique UNIQUE (name)
);

CREATE TABLE Characters (
    id UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    imageUrl VARCHAR(200) NOT NULL,
    rarity INT NOT NULL,
    combatPathId UUID NOT NULL,
    combatTypeId UUID NOT NULL,
    bodyMainStatOne VARCHAR(50),
    bodyMainStatTwo VARCHAR(50),
    feetMainStatOne VARCHAR(50),
    feetMainStatTwo VARCHAR(50),
    planarSphereMainStat VARCHAR(50),
    linkRopeMainStatOne VARCHAR(50),
    linkRopeMainStatTwo VARCHAR(50),
    substatOne VARCHAR(50),
    substatTwo VARCHAR(50),
    substatThree VARCHAR(50),
    substatFour VARCHAR(50),
    relicSetOneIdFirst UUID,
    relicSetOneIdSecond UUID,
    relicSetTwoIdFirst UUID,
    relicSetTwoIdSecond UUID,
    relicSetThreeIdFirst UUID,
    relicSetThreeIdSecond UUID,
    ornamentSetOneId UUID,
    ornamentSetTwoId UUID,
    lightConeOneId UUID,
    lightConeTwoId UUID,
    lightConeThreeId UUID,
    lightConeFourId UUID,
    lightConeFiveId UUID,
    CONSTRAINT Characters_Unique UNIQUE (name),
    CONSTRAINT Combat_Path_Foreign_Key FOREIGN KEY (combatPathId) REFERENCES Combat_Types (id),
    CONSTRAINT Combat_Type_Foreign_Key FOREIGN KEY (combatTypeId) REFERENCES Combat_Paths (id),
    CONSTRAINT Relic_Set_One_First_Foreign_Key FOREIGN KEY (relicSetOneIdFirst) REFERENCES Relics (id),
    CONSTRAINT Relic_Set_One_Second_Foreign_Key FOREIGN KEY (relicSetOneIdSecond) REFERENCES Relics (id),
    CONSTRAINT Relic_Set_Two_First_Foreign_Key FOREIGN KEY (relicSetTwoIdFirst) REFERENCES Relics (id),
    CONSTRAINT Relic_Set_Two_Second_Foreign_Key FOREIGN KEY (relicSetTwoIdSecond) REFERENCES Relics (id),
    CONSTRAINT Relic_Set_Three_First_Foreign_Key FOREIGN KEY (relicSetThreeIdFirst) REFERENCES Relics (id),
    CONSTRAINT Relic_Set_Three_Second_Foreign_Key FOREIGN KEY (relicSetThreeIdSecond) REFERENCES Relics (id),
    CONSTRAINT Ornament_Set_One_Foreign_Key FOREIGN KEY (ornamentSetOneId) REFERENCES Ornaments (id),
    CONSTRAINT Ornament_Set_Two_Foreign_Key FOREIGN KEY (ornamentSetTwoId) REFERENCES Ornaments (id),
    CONSTRAINT Light_Cone_One_Foreign_Key FOREIGN KEY (lightConeOneId) REFERENCES Light_Cones (id),
    CONSTRAINT Light_Cone_Two_Foreign_Key FOREIGN KEY (lightConeTwoId) REFERENCES Light_Cones (id),
    CONSTRAINT Light_Cone_Three_Foreign_Key FOREIGN KEY (lightConeThreeId) REFERENCES Light_Cones (id),
    CONSTRAINT Light_Cone_Four_Foreign_Key FOREIGN KEY (lightConeFourId) REFERENCES Light_Cones (id),
    CONSTRAINT Light_Cone_Five_Foreign_Key FOREIGN KEY (lightConeFiveId) REFERENCES Light_Cones (id)
);
