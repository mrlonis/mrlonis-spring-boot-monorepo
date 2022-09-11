CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE MythicHeroes_Factions
(
    id             UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name           varchar(50)  NOT NULL,
    imageUrl       varchar(200) NOT NULL,
    imageSourceUrl varchar(200),
    CONSTRAINT MythicHeroes_Factions_Unique UNIQUE (id, name, imageUrl)
);

CREATE TABLE MythicHeroes_Rarities
(
    id             UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name           varchar(3)   NOT NULL,
    imageUrl       varchar(200) NOT NULL,
    imageSourceUrl varchar(200) NOT NULL,
    CONSTRAINT MythicHeroes_Rarity_Unique UNIQUE (id, name, imageUrl, imageSourceUrl)
);

CREATE TABLE MythicHeroes_Types
(
    id             UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name           varchar(15)  NOT NULL,
    imageUrl       varchar(200) NOT NULL,
    imageSourceUrl varchar(200) NOT NULL,
    CONSTRAINT MythicHeroes_Types_Unique UNIQUE (id, name, imageUrl)
);

CREATE TABLE MythicHeroes_Artifacts
(
    id   UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name varchar(50) NOT NULL,
    CONSTRAINT MythicHeroes_Artifacts_Unique UNIQUE (id, name)
);

CREATE TABLE MythicHeroes_Runes
(
    id   UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name varchar(15) NOT NULL,
    CONSTRAINT MythicHeroes_Runes_Unique UNIQUE (id, name)
);

CREATE TABLE MythicHeroes_Heroes
(
    id             UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name           varchar(50)  NOT NULL,
    imageUrl       varchar(200) NOT NULL,
    imageSourceUrl varchar(200) NOT NULL,
    factionId      UUID         NOT NULL,
    rarityId       UUID         NOT NULL,
    typeId         UUID         NOT NULL,
    CONSTRAINT MythicHeroes_Heroes_UniqueHeroes UNIQUE (name),
    CONSTRAINT MythicHeroes_Heroes_Faction_ForeignKey FOREIGN KEY (factionId) REFERENCES MythicHeroes_Factions (id),
    CONSTRAINT MythicHeroes_Heroes_Rarity_ForeignKey FOREIGN KEY (rarityId) REFERENCES MythicHeroes_Rarities (id),
    CONSTRAINT MythicHeroes_Heroes_Type_ForeignKey FOREIGN KEY (typeId) REFERENCES MythicHeroes_Types (id)
);
