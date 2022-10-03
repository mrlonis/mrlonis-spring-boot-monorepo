INSERT INTO MythicHeroes_Factions
(
name,
imageUrl,
imagesourceurl
)
    VALUES (
           'Luminarch & Shadowarch',
           'factions/Luminarch_Shadowarch.png',
           ''
           ),
           (
           'Luminarch & Verdian',
           'factions/Luminarch_Verdian.png',
           ''
           ),
           (
           'Luminarch & Guardian',
           'factions/Luminarch_Guardian.png',
           ''
           ),
           (
           'Shadowarch & Verdian',
           'factions/Shadowarch_Verdian.png',
           ''
           ),
           (
           'Shadowarch & Guardian',
           'factions/Shadowarch_Guardian.png',
           ''
           ),
           (
           'Guardian & Verdian',
           'factions/Guardian_Verdian.png',
           ''
           ),
           (
           'Luminarch',
           'factions/Luminarch.png',
           ''
           ),
           (
           'Shadowarch',
           'factions/Shadowarch.png',
           ''
           ),
           (
           'Guardian',
           'factions/Guardian.png',
           ''
           ),
           (
           'Verdian',
           'factions/Verdian.png',
           ''
           );

INSERT INTO MythicHeroes_Rarities
(
name,
imageUrl,
imageSourceUrl
)
    VALUES (
           'UR',
           'rarities/UR.png',
           'https://www.mythicheroes.com/wp-content/uploads/2021/09/Rarity_Ur-1.png'
           ),
           (
           'SSR',
           'rarities/SSR.png',
           'https://www.mythicheroes.com/wp-content/uploads/2021/08/Rarity_Ssr.png'
           ),
           (
           'SR',
           'rarities/SR.png',
           'https://www.mythicheroes.com/wp-content/uploads/2021/08/Rarity_Sr.png'
           );

INSERT INTO MythicHeroes_Types
(
name,
imageUrl,
imageSourceUrl
)
    VALUES (
           'Tank',
           'types/Tank.png',
           'https://www.mythicheroes.com/wp-content/uploads/2021/08/HeroFilters_Button_Class_Tank.png'
           ),
           (
           'Fighter',
           'types/Fighter.png',
           'https://www.mythicheroes.com/wp-content/uploads/2021/08/HeroFilters_Button_Class_Damage.png'
           ),
           (
           'Mage',
           'types/Mage.png',
           'https://www.mythicheroes.com/wp-content/uploads/2021/08/HeroFilters_Button_Class_Mage.png'
           ),
           (
           'Support',
           'types/Support.png',
           'https://www.mythicheroes.com/wp-content/uploads/2021/08/HeroFilters_Button_Class_Support.png'
           );

INSERT INTO MythicHeroes_Artifacts
(
    name
)
    VALUES (
               'Axe of Pangu'
           ),
           (
               'Staff of Sharur'
           ),
           (
               'Sudarshana Chakra'
           ),
           (
               'Yasakani Magatama'
           ),
           (
               'Excalibur'
           ),
           (
               'Thor''s Hammer'
           ),
           (
               'Scarab Badge'
           ),
           (
               'Aegis Shield'
           );

INSERT INTO MythicHeroes_Runes
(
    name
)
    VALUES (
               'Earth'
           ),
           (
               'Water'
           ),
           (
               'Fire'
           ),
           (
               'Air'
           ),
           (
               'Thunder'
           ),
           (
               'Forest'
           ),
           (
               'Light'
           ),
           (
               'Dark'
           );

INSERT INTO MythicHeroes_Heroes
(
name,
imageUrl,
imageSourceUrl,
factionId,
rarityId,
typeId
)
    VALUES
--UR
--Luminarch & Shadowarch
(
'Lucifer',
'mythicHeroes/Lucifer.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-5-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Luminarch & Shadowarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'UR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Fighter')
),
--Luminarch & Verdian
(
'Iset',
'mythicHeroes/Iset.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/10/smallportrait-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Luminarch & Verdian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'UR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Support')
),
--Luminarch & Guardian
(
'Amaterasu',
'mythicHeroes/Amaterasu.png',
'https://www.mythicheroes.com/wp-content/uploads/2022/03/website_icon-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Luminarch & Guardian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'UR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Mage')
),
--Shadowarch & Verdian
(
'Typhon',
'mythicHeroes/Typhon.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/12/small-portrait-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Shadowarch & Verdian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'UR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Mage')
),
--Shadowarch & Guardian
(
'Lilith',
'mythicHeroes/Lilith.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/10/tinyprofile-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Shadowarch & Guardian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'UR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Mage')
),
--Guardian & Verdian
(
'Nuwa',
'mythicHeroes/Nuwa.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-23-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Guardian & Verdian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'UR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Support')
),
--SSR
--Luminarch
(
'Zeus',
'mythicHeroes/Zeus.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-8-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Luminarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Mage')
),
(
'Athena',
'mythicHeroes/Athena.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-1-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Luminarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Tank')
),
(
'Susanoo',
'mythicHeroes/Susanoo.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-7-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Luminarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Fighter')
),
(
'Artemis',
'mythicHeroes/Artemis.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Luminarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Fighter')
),
(
'Dionysus',
'mythicHeroes/Dionysus.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-3-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Luminarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Support')
),
(
'Thor',
'mythicHeroes/Thor.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/11/tinyprofile-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Luminarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Tank')
),
(
'Western Queen',
'mythicHeroes/Western_Queen.png',
'https://www.mythicheroes.com/wp-content/uploads/2022/02/tinyprofile-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Luminarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Support')
),
(
'Odin',
'mythicHeroes/Odin.png',
'https://www.mythicheroes.com/wp-content/uploads/2022/04/website_icon-1-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Luminarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Tank')
),
--Shadowarch
(
'Persephone',
'mythicHeroes/Persephone.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyportrait-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Shadowarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Mage')
),
(
'Izanami',
'mythicHeroes/Izanami.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-13-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Shadowarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Mage')
),
(
'Hades',
'mythicHeroes/Hades.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-11-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Shadowarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Tank')
),
(
'Medusa',
'mythicHeroes/Medusa.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-14-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Shadowarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Fighter')
),
(
'Anubis',
'mythicHeroes/Anubis.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-9-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Shadowarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Tank')
),
(
'Hela',
'mythicHeroes/Hela.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/12/Smallportrait-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Shadowarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Support')
),
(
'Faust',
'mythicHeroes/Faust.png',
'https://www.mythicheroes.com/wp-content/uploads/2022/02/tinyprofile-1-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Shadowarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Support')
),
(
'Loki',
'mythicHeroes/Loki.png',
'https://www.mythicheroes.com/wp-content/uploads/2022/04/website_icon-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Shadowarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Fighter')
),
--Guardian
(
'Hercules',
'mythicHeroes/Hercules.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-18-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Guardian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Tank')
),
(
'Lu Bu',
'mythicHeroes/Lu_Bu.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-21-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Guardian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Fighter')
),
(
'Ganjiang & Moye',
'mythicHeroes/Ganjiang_Moye.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-17-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Guardian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Mage')
),
(
'Joan of Arc',
'mythicHeroes/Joan_of_Arc.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-20-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Guardian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Support')
),
(
'Cleopatra',
'mythicHeroes/Cleopatra.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-16-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Guardian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Mage')
),
(
'Cassandra',
'mythicHeroes/Cassandra.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/11/tinyprofile-1-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Guardian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Support')
),
(
'Archimedes',
'mythicHeroes/Archimedes.png',
'https://www.mythicheroes.com/wp-content/uploads/2022/01/tinyprofile-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Guardian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Fighter')
),
(
'Leonidas',
'mythicHeroes/Leonidas.png',
'https://www.mythicheroes.com/wp-content/uploads/2022/06/website_icon-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Guardian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Tank')
),
--Verdian
(
'Nagakayna',
'mythicHeroes/Nagakayna.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-28-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Verdian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Support')
),
(
'Tamamo no Mae',
'mythicHeroes/Tamamo_no_Mae.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-30-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Verdian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Mage')
),
(
'Idun',
'mythicHeroes/Idun.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-27-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Verdian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Support')
),
(
'Gaia',
'mythicHeroes/Gaia.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-25-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Verdian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Tank')
),
(
'Oberon',
'mythicHeroes/Oberon.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-29-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Verdian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Fighter')
),
(
'Flora',
'mythicHeroes/Flora.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/10/tinyprofile-2-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Verdian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Mage')
),
(
'Poseidon',
'mythicHeroes/Poseidon.png',
'https://www.mythicheroes.com/wp-content/uploads/2022/01/tinyprofile-1-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Verdian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Tank')
),
(
'Freyja',
'mythicHeroes/Freyja.png',
'https://www.mythicheroes.com/wp-content/uploads/2022/05/website_icon-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Verdian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SSR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Fighter')
),
--SR
--Luminarch
(
'Baldur',
'mythicHeroes/Baldur.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-2-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Luminarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Fighter')
),
(
'Muse',
'mythicHeroes/Muse.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/09/smallportrait-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Luminarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Support')
),
(
'Eos',
'mythicHeroes/Eos.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-4-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Luminarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Mage')
),
--Shadowarch
(
'Thanatos',
'mythicHeroes/Thanatos.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-15-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Shadowarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Tank')
),
(
'Hodur',
'mythicHeroes/Hodur.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-12-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Shadowarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Fighter')
),
(
'Dracula',
'mythicHeroes/Dracula.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-10-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Shadowarch'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Mage')
),
--Guardian
(
'Hippolyta',
'mythicHeroes/Hippolyta.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-19-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Guardian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Tank')
),
(
'Mulan',
'mythicHeroes/Mulan.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-32-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Guardian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Fighter')
),
(
'Merlin',
'mythicHeroes/Merlin.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-22-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Guardian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Support')
),
--Verdian
(
'Yukionna',
'mythicHeroes/Yukionna.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-31-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Verdian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Mage')
),
(
'Ganesha',
'mythicHeroes/Ganesha.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-24-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Verdian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Tank')
),
(
'Harpy',
'mythicHeroes/Harpy.png',
'https://www.mythicheroes.com/wp-content/uploads/2021/08/tinyprofile-26-120x120.png',
(SELECT id FROM MythicHeroes_Factions WHERE name = 'Verdian'),
(SELECT id FROM MythicHeroes_Rarities WHERE name = 'SR'),
(SELECT id FROM MythicHeroes_Types WHERE name = 'Support')
);
