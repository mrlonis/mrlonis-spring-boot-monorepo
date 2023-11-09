CREATE TABLE Combat_Types
(
    id          UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    name        VARCHAR(50)  NOT NULL,
    imageUrl    VARCHAR(200) NOT NULL,
    description VARCHAR(500) NOT NULL,
    CONSTRAINT Combat_Types_Unique UNIQUE ( name, imageUrl, description )
);

CREATE TABLE Combat_Paths
(
    id          UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    name        VARCHAR(50)  NOT NULL,
    imageUrl    VARCHAR(200) NOT NULL,
    description VARCHAR(500) NOT NULL,
    CONSTRAINT Combat_Paths_Unique UNIQUE ( name, imageUrl, description )
);

CREATE TABLE Light_Cones
(
    id           UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    name         VARCHAR(50)  NOT NULL,
    imageUrl     VARCHAR(200) NOT NULL,
    rarity       INT          NOT NULL,
    combatPathId UUID         NOT NULL,
    skill        VARCHAR(750) NOT NULL,
    CONSTRAINT Light_Cones_Unique UNIQUE ( name, imageUrl, rarity, combatPathId, skill ),
    CONSTRAINT Combat_Paths_Foreign_Key FOREIGN KEY ( combatPathId ) REFERENCES Combat_Paths ( id )
);

CREATE TABLE Relics
(
    id                 UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    name               VARCHAR(50)  NOT NULL,
    imageUrl           VARCHAR(200) NOT NULL,
    twoPieceSetEffect  VARCHAR(500) NOT NULL,
    fourPieceSetEffect VARCHAR(500) NOT NULL,
    CONSTRAINT Relics_Unique UNIQUE ( name, imageUrl, twoPieceSetEffect, fourPieceSetEffect )
);

CREATE TABLE Relic_Sets
(
    id         UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    relicOneId UUID         NOT NULL,
    relicTwoId UUID,
    CONSTRAINT Relic_Sets_Unique UNIQUE ( relicOneId, relicTwoId ),
    CONSTRAINT Relics_One_Foreign_Key FOREIGN KEY ( relicOneId ) REFERENCES Relics ( id ),
    CONSTRAINT Relics_Two_Foreign_Key FOREIGN KEY ( relicTwoId ) REFERENCES Relics ( id )
);

CREATE TABLE Ornaments
(
    id                UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    name              VARCHAR(50)  NOT NULL,
    imageUrl          VARCHAR(200) NOT NULL,
    twoPieceSetEffect VARCHAR(500) NOT NULL,
    CONSTRAINT Ornaments_Unique UNIQUE ( name, imageUrl, twoPieceSetEffect )
);

CREATE TABLE Characters
(
    id               UUID DEFAULT RANDOM_UUID( ) PRIMARY KEY,
    name             VARCHAR(50)  NOT NULL,
    imageUrl         VARCHAR(200) NOT NULL,
    rarity           INT          NOT NULL,
    combatPathId     UUID         NOT NULL,
    combatTypeId     UUID         NOT NULL,
    relicSetOneId    UUID         NOT NULL,
    relicSetTwoId    UUID,
    relicSetThreeId  UUID,
    ornamentOneId    UUID         NOT NULL,
    ornamentTwoId    UUID,
    ornamentThreeId  UUID,
    lightConeOneId   UUID         NOT NULL,
    lightConeTwoId   UUID,
    lightConeThreeId UUID,
    lightConeFourId  UUID,
    lightConeFiveId  UUID,
    CONSTRAINT Characters_Unique UNIQUE ( name, imageUrl, rarity ),
    CONSTRAINT Combat_Path_Foreign_Key FOREIGN KEY ( combatPathId ) REFERENCES Combat_Types ( id ),
    CONSTRAINT Combat_Type_Foreign_Key FOREIGN KEY ( combatTypeId ) REFERENCES Combat_Paths ( id ),
    CONSTRAINT Relic_Set_One_Foreign_Key FOREIGN KEY ( relicSetOneId ) REFERENCES Relic_Sets ( id ),
    CONSTRAINT Relic_Set_Two_Foreign_Key FOREIGN KEY ( relicSetTwoId ) REFERENCES Relic_Sets ( id ),
    CONSTRAINT Relic_Set_Three_Foreign_Key FOREIGN KEY ( relicSetThreeId ) REFERENCES Relic_Sets ( id ),
    CONSTRAINT Ornament_One_Foreign_Key FOREIGN KEY ( relicSetOneId ) REFERENCES Ornaments ( id ),
    CONSTRAINT Ornament_Two_Foreign_Key FOREIGN KEY ( relicSetTwoId ) REFERENCES Ornaments ( id ),
    CONSTRAINT Ornament_Three_Foreign_Key FOREIGN KEY ( relicSetThreeId ) REFERENCES Ornaments ( id ),
    CONSTRAINT Light_Cone_One_Foreign_Key FOREIGN KEY ( lightConeOneId ) REFERENCES Light_Cones ( id ),
    CONSTRAINT Light_Cone_Two_Foreign_Key FOREIGN KEY ( lightConeTwoId ) REFERENCES Light_Cones ( id ),
    CONSTRAINT Light_Cone_Three_Foreign_Key FOREIGN KEY ( lightConeThreeId ) REFERENCES Light_Cones ( id ),
    CONSTRAINT Light_Cone_Four_Foreign_Key FOREIGN KEY ( lightConeFourId ) REFERENCES Light_Cones ( id ),
    CONSTRAINT Light_Cone_Five_Foreign_Key FOREIGN KEY ( lightConeFiveId ) REFERENCES Light_Cones ( id )
);