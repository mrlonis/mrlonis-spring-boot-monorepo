INSERT INTO Weapons (
        name,
        imageUrl,
        rarity,
        weaponType,
        secondaryStat,
        weaponAffix,
        affixDescription,
        description
    )
VALUES (
        'Dull Blade', -- name
        NULL, -- imageUrl
        1, -- rarity
        'Sword', -- weaponType
        NULL, -- secondaryStat
        NULL, -- weaponAffix
        NULL, -- affixDescription
        NULL -- description
),
(        'Silver Sword', -- name
        NULL, -- imageUrl
        2, -- rarity
        'Sword', -- weaponType
        NULL, -- secondaryStat
        NULL, -- weaponAffix
        NULL, -- affixDescription
        NULL -- description
),
(        'Cool Steel', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Sword', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Increases DMG against opponents affected by Hydro or Cryo by 12%.', -- affixDescription
        NULL -- description
),
(        'Harbinger of Dawn', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Sword', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'When HP is above 90%, increases CRIT Rate by 14%.', -- affixDescription
        NULL -- description
),
(        'Traveler''s Handy Sword', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Sword', -- weaponType
        'DEF%', -- secondaryStat
        NULL, -- weaponAffix
        'Each Elemental Orb or Particle collected restores 1% HP.', -- affixDescription
        NULL -- description
),
(        'Dark Iron Sword', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Sword', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'Upon causing an Overloaded, Superconduct, Electro-Charged, Quicken, Aggravate, Hyperbloom, or Electro-infused Swirl reaction, ATK is increased by 20% for 12s.', -- affixDescription
        NULL -- description
),
(        'Fillet Blade', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Sword', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'On hit, has a 50% chance to deal 240% ATK DMG to a single opponent. Can only occur once every 15s.', -- affixDescription
        NULL -- description
),
(        'Skyrider Sword', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Sword', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'Using an Elemental Burst grants a 12% increase in ATK and Movement SPD for 15s.', -- affixDescription
        NULL -- description
),
(        'Favonius Sword', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'CRIT Hits have a 60% chance to generate a small amount of Elemental Particles, which will regenerate 6 Energy for the character. Can only occur once every 12s.', -- affixDescription
        NULL -- description
),
(        'The Flute', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Normal or Charged Attacks grant a Harmonic on hits. Gaining 5 Harmonics triggers the power of music and deals 100% ATK DMG to surrounding opponents. Harmonics last up to 30s, and a maximum of 1 can be gained every 0.5s.', -- affixDescription
        NULL -- description
),
(        'Sacrificial Sword', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'After damaging an opponent with an Elemental Skill, the skill has a 40% chance to end its own CD. Can only occur once every 30s.', -- affixDescription
        NULL -- description
),
(        'Royal Longsword', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Upon damaging an opponent, increases CRIT Rate by 8%. Max 5 stacks. A CRIT Hit removes all stacks.', -- affixDescription
        NULL -- description
),
(        'Lion''s Roar', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Increases DMG against opponents affected by Pyro or Electro by 20%.', -- affixDescription
        NULL -- description
),
(        'Prototype Rancour', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'Physical DMG Bonus', -- secondaryStat
        NULL, -- weaponAffix
        'On hit, Normal or Charged Attacks increase ATK and DEF by 4% for 6s. Max 4 stacks. This effect can only occur once every 0.3s.', -- affixDescription
        NULL -- description
),
(        'Iron Sting', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'Dealing Elemental DMG increases all DMG by 6% for 6s. Max 2 stacks. Can occur once every 1s.', -- affixDescription
        NULL -- description
),
(        'Blackcliff Longsword', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'After defeating an opponent, ATK is increased by 12% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', -- affixDescription
        NULL -- description
),
(        'The Black Sword', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'Increases DMG dealt by Normal and Charged Attacks by 20%. Additionally, regenerates 60% of ATK as HP when Normal and Charged Attacks score a CRIT Hit. This effect can occur once every 5s.', -- affixDescription
        NULL -- description
),
(        'The Alley Flash', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'Increases DMG dealt by the character equipping this weapon by 12%. Taking DMG disables this effect for 5s.', -- affixDescription
        NULL -- description
),
(        'Sword of Descension', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Effective only on the following platform: "PlayStation Network" | Hitting opponents with Normal and Charged Attacks grants a 50% chance to deal 200% ATK as DMG in a small AoE. This effect can only occur once every 10s. Additionally, if the Traveler equips the Sword of Descension, their ATK is increased by 66.', -- affixDescription
        NULL -- description
),
(        'Festering Desire', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Elemental Skill DMG by 16% and Elemental Skill CRIT Rate by 6%.', -- affixDescription
        NULL -- description
),
(        'Amenoma Kageuchi', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'After casting an Elemental Skill, gain 1 Succession Seed. This effect can be triggered once every 5s. The Succession Seed lasts for 30s. Up to 3 Succession Seeds may exist simultaneously. After using an Elemental Burst, all Succession Seeds are consumed and after 2s, the character regenerates 6 Energy for each seed consumed.', -- affixDescription
        NULL -- description
),
(        'Cinnabar Spindle', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'DEF%', -- secondaryStat
        NULL, -- weaponAffix
        'Elemental Skill DMG is increased by 40% of DEF. The effect will be triggered no more than once every 1.5s and will be cleared 0.1s after the Elemental Skill deals DMG.', -- affixDescription
        NULL -- description
),
(        'Kagotsurube Isshin', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'When a Normal, Charged, or Plunging Attack hits an opponent, it will whip up a Hewing Gale, dealing AoE DMG equal to 180% of ATK and increasing ATK by 15% for 8s. This effect can be triggered once every 8s.', -- affixDescription
        NULL -- description
),
(        'Sapwood Blade', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'After triggering Burning, Quicken, Aggravate, Spread, Bloom, Hyperbloom, or Burgeon, a Leaf of Consciousness will be created around the character for a maximum of 10s. When picked up, the Leaf will grant the character 60 Elemental Mastery for 12s. Only 1 Leaf can be generated this way every 20s. This effect can still be triggered if the character is not on the field. The Leaf of Consciousness'' effect cannot stack.', -- affixDescription
        NULL -- description
),
(        'Xiphos'' Moonlight', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'The following effect will trigger every 10s: The equipping character will gain 0.036% Energy Recharge for each point of Elemental Mastery they possess for 12s, with nearby party members gaining 30% of this buff for the same duration. Multiple instances of this weapon can allow this buff to stack. This effect will still trigger even if the character is not on the field.', -- affixDescription
        NULL -- description
),
(        'Prized Isshin Blade (Awakened)', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'When a Normal, Charged, or Plunging Attack hits an opponent, it will release an Accursed Spirit, dealing AoE DMG equal to 180% of ATK and restoring 100% of ATK as HP. This effect can be triggered once every 8s. The DMG done by this weapon''s wielder is decreased by 50%.', -- affixDescription
        NULL -- description
),
(        'Prized Isshin Blade (Shattered)', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        NULL, -- secondaryStat
        NULL, -- weaponAffix
        'When a Normal, Charged, or Plunging Attack hits an opponent, it will release an Accursed Spirit, dealing AoE DMG equal to 180% of ATK. This effect can be triggered once every 8s. The DMG done by this weapon''s wielder is decreased by 50%.', -- affixDescription
        NULL -- description
),
(        'Prized Isshin Blade', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'When a Normal, Charged, or Plunging Attack hits an opponent, it will release an Accursed Spirit, dealing AoE DMG equal to 180% of ATK and restoring 100% of ATK as HP. This effect can be triggered once every 8s. The DMG done by this weapon''s wielder is decreased by 50%.', -- affixDescription
        NULL -- description
),
(        'Toukabou Shigure', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'After an attack hits opponents, it will inflict an instance of Cursed Parasol upon one of them for 10s. This effect can be triggered once every 15s. If this opponent is defeated during Cursed Parasol''s duration, Cursed Parasol''s CD will be refreshed immediately. The character wielding this weapon will deal 16% more DMG to the opponent affected by Cursed Parasol.', -- affixDescription
        NULL -- description
),
(        'Wolf-Fang', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'DMG dealt by Elemental Skill and Elemental Burst is increased by 16%. When an Elemental Skill hits an opponent, its CRIT Rate will be increased by 2%. When an Elemental Burst hits an opponent, its CRIT Rate will be increased by 2%. Both of these effects last 10s separately, have 4 max stacks, and can be triggered once every 0.1s.', -- affixDescription
        NULL -- description
),
(        'Finale of the Deep', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'When using an Elemental Skill, ATK will be increased by 12% for 15s, and a Bond of Life worth 25% of Max HP will be granted. This effect can be triggered once every 10s. When the Bond of Life is cleared, a maximum of 150 ATK will be gained based on 2.4% of the total amount of the Life Bond cleared, lasting for 15s.', -- affixDescription
        NULL -- description
),
(        'Fleuve Cendre Ferryman', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Elemental Skill CRIT Rate by 8%. Additionally, increases Energy Recharge by 16% for 5s after using an Elemental Skill.', -- affixDescription
        NULL -- description
),
(        'The Dockhand''s Assistant', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'HP%', -- secondaryStat
        NULL, -- weaponAffix
        'When the wielder is healed or heals others, they will gain a Stoic''s Symbol that lasts 30s, up to a maximum of 3 Symbols. When using their Elemental Skill or Burst, all Symbols will be consumed and the Roused effect will be granted for 10s. For each Symbol consumed, gain 40 Elemental Mastery, and 2s after the effect occurs, 2 Energy per Symbol consumed will be restored for said character. The Roused effect can be triggered once every 15s, and Symbols can be gained even when the character is not on the field.', -- affixDescription
        NULL -- description
),
(        'Sword of Narzissenkreuz', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'When the equipping character does not have an Arkhe: When Normal Attacks, Charged Attacks, or Plunging Attacks strike, a Pneuma or Ousia energy blast will be unleashed, dealing 160% of ATK as DMG. This effect can be triggered once every 12s. The energy blast type is determined by the current type of the Sword of Narzissenkreuz.', -- affixDescription
        NULL -- description
),
(        'Sword of Narzissenkreuz (Quest)', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Sword', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'In countless stories, the weapon that befits the legendary hero is also the key to opening all gates, required to surpass the climax and reach destiny''s denouement.', -- affixDescription
        NULL -- description
),
(        'Aquila Favonia', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Sword', -- weaponType
        'Physical DMG Bonus', -- secondaryStat
        NULL, -- weaponAffix
        'ATK is increased by 20%. Triggers on taking DMG: the soul of the Falcon of the West awakens, holding the banner of resistance aloft, regenerating HP equal to 100% of ATK and dealing 200% of ATK as DMG to surrounding opponents. This effect can only occur once every 15s.', -- affixDescription
        NULL -- description
),
(        'Skyward Blade', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Sword', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'CRIT Rate increased by 4%. Gains Skypiercing Might upon using an Elemental Burst: Increases Movement SPD by 10%, increases ATK SPD by 10%, and Normal and Charged hits deal additional DMG equal to 20% of ATK. Skypiercing Might lasts for 12s.', -- affixDescription
        NULL -- description
),
(        'Freedom-Sworn', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Sword', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'A part of the "Millennial Movement" that wanders amidst the winds. Increases DMG by 10%. When the character wielding this weapon triggers Elemental Reactions, they gain a Sigil of Rebellion. This effect can be triggered once every 0.5s and can be triggered even if said character is not on the field. When you possess 2 Sigils of Rebellion, all of them will be consumed and all nearby party members will obtain "Millennial Movement: Song of Resistance" for 12s. "Millennial Movement: Song of Resistance" increases Normal, Charged and Plunging Attack DMG by 16% and increases ATK by 20%. Once this effect is triggered, you will not gain Sigils of Rebellion for 20s. Of the many effects of the "Millennial Movement," buffs of the same type will not stack.', -- affixDescription
        NULL -- description
),
(        'Summit Shaper', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Sword', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Shield Strength by 20%. Scoring hits on opponents increases ATK by 4% for 8s. Max 5 stacks. Can only occur once every 0.3s. While protected by a shield, this ATK increase effect is increased by 100%.', -- affixDescription
        NULL -- description
),
(        'Primordial Jade Cutter', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Sword', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'HP increased by 20%. Additionally, provides an ATK Bonus based on 1.2% of the wielder''s Max HP.', -- affixDescription
        NULL -- description
),
(        'Mistsplitter Reforged', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Sword', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'Gain a 12% Elemental DMG Bonus for all elements and receive the might of the Mistsplitter''s Emblem. At stack levels 1/2/3, the Mistsplitter''s Emblem provides a 8/16/28% Elemental DMG Bonus for the character''s Elemental Type. The character will obtain 1 stack of Mistsplitter''s Emblem in each of the following scenarios: Normal Attack deals Elemental DMG (stack lasts 5s), casting Elemental Burst (stack lasts 10s); Energy is less than 100% (stack disappears when Energy is full). Each stack''s duration is calculated independently.', -- affixDescription
        NULL -- description
),
(        'Haran Geppaku Futsu', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Sword', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'Obtain 12% All Elemental DMG Bonus. When other nearby party members use Elemental Skills, the character equipping this weapon will gain 1 Wavespike stack. Max 2 stacks. This effect can be triggered once every 0.3s. When the character equipping this weapon uses an Elemental Skill, all stacks of Wavespike will be consumed to gain Rippling Upheaval: each stack of Wavespike consumed will increase Normal Attack DMG by 20% for 8s.', -- affixDescription
        NULL -- description
),
(        'Key of Khaj-Nisut', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Sword', -- weaponType
        'HP%', -- secondaryStat
        NULL, -- weaponAffix
        'HP increased by 20%. When an Elemental Skill hits opponents, you gain the Grand Hymn effect for 20s. This effect increases the equipping character''s Elemental Mastery by 0.12% of their Max HP. This effect can trigger once every 0.3s. Max 3 stacks. When this effect gains 3 stacks, or when the third stack''s duration is refreshed, the Elemental Mastery of all nearby party members will be increased by 0.2% of the equipping character''s max HP for 20s.', -- affixDescription
        NULL -- description
),
(        'Light of Foliar Incision', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Sword', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'CRIT Rate is increased by 4%. After Normal Attacks deal Elemental DMG, the Foliar Incision effect will be obtained, increasing DMG dealt by Normal Attacks and Elemental Skills by 120% of Elemental Mastery. This effect will disappear after 28 DMG instances or 12s. You can obtain Foliar Incision once every 12s.', -- affixDescription
        NULL -- description
),
(        'Splendor of Tranquil Waters', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Sword', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'When the equipping character''s current HP increases or decreases, Elemental Skill DMG dealt will be increased by 8% for 6s. Max 3 stacks. This effect can be triggered once every 0.2s. When other party members'' current HP increases or decreases, the equipping character''s Max HP will be increased by 14% for 6s. Max 2 stacks. This effect can be triggered once every 0.2s. The aforementioned effects can be triggered even if the wielder is off-field.', -- affixDescription
        NULL -- description
),
(        'Waster Greatsword', -- name
        NULL, -- imageUrl
        1, -- rarity
        'Claymore', -- weaponType
        NULL, -- secondaryStat
        NULL, -- weaponAffix
        NULL, -- affixDescription
        NULL -- description
),
(        'Old Merc''s Pal', -- name
        NULL, -- imageUrl
        2, -- rarity
        'Claymore', -- weaponType
        NULL, -- secondaryStat
        NULL, -- weaponAffix
        NULL, -- affixDescription
        NULL -- description
),
(        'Ferrous Shadow', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Claymore', -- weaponType
        'HP%', -- secondaryStat
        NULL, -- weaponAffix
        'When HP falls below 70%, increases Charged Attack DMG by 30% and Charged Attacks become harder to interrupt.', -- affixDescription
        NULL -- description
),
(        'Bloodtainted Greatsword', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Claymore', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'Increases DMG dealt against opponents affected by Pyro or Electro by 12%.', -- affixDescription
        NULL -- description
),
(        'White Iron Greatsword', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Claymore', -- weaponType
        'DEF%', -- secondaryStat
        NULL, -- weaponAffix
        'Defeating an opponent restores 8% HP.', -- affixDescription
        NULL -- description
),
(        'Quartz', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Claymore', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'Upon causing an Overloaded, Melt, Burning, Vaporize, Burgeon, or a Pyro-infused Swirl reaction, ATK is increased by 20% for 12s.', -- affixDescription
        NULL -- description
),
(        'Debate Club', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Claymore', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'After using an Elemental Skill, on hit, Normal and Charged Attacks deal additional DMG equal to 60% of ATK in a small AoE. Effect lasts 15s. DMG can only occur once every 3s.', -- affixDescription
        NULL -- description
),
(        'Skyrider Greatsword', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Claymore', -- weaponType
        'Physical DMG Bonus', -- secondaryStat
        NULL, -- weaponAffix
        'On hit, Normal or Charged Attacks increase ATK by 6% for 6s. Max 4 stacks. Can occur once every 0.5s.', -- affixDescription
        NULL -- description
),
(        'Favonius Greatsword', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'CRIT Hits have a 60% chance to generate a small amount of Elemental Particles, which will regenerate 6 Energy for the character. Can only occur once every 12s.', -- affixDescription
        NULL -- description
),
(        'The Bell', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'HP%', -- secondaryStat
        NULL, -- weaponAffix
        'Taking DMG generates a shield which absorbs DMG up to 20% of Max HP. This shield lasts for 10s or until broken, and can only be triggered once every 45s. While protected by a shield, the character gains 12% increased DMG.', -- affixDescription
        NULL -- description
),
(        'Sacrificial Greatsword', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'After damaging an opponent with an Elemental Skill, the skill has a 40% chance to end its own CD. Can only occur once every 30s.', -- affixDescription
        NULL -- description
),
(        'Royal Greatsword', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Upon damaging an opponent, increases CRIT Rate by 8%. Max 5 stacks. A CRIT Hit removes all stacks.', -- affixDescription
        NULL -- description
),
(        'Rainslasher', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'Increases DMG against opponents affected by Hydro or Electro by 20%.', -- affixDescription
        NULL -- description
),
(        'Prototype Archaic', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'On hit, Normal or Charged Attacks have a 50% chance to deal an additional 240% ATK DMG to opponents within a small AoE. Can only occur once every 15s.', -- affixDescription
        NULL -- description
),
(        'Whiteblind', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'DEF%', -- secondaryStat
        NULL, -- weaponAffix
        'On hit, Normal or Charged Attacks increase ATK and DEF by 6% for 6s. Max 4 stacks. This effect can only occur once every 0.5s.', -- affixDescription
        NULL -- description
),
(        'Blackcliff Slasher', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'After defeating an opponent, ATK is increased by 12% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', -- affixDescription
        NULL -- description
),
(        'Serpent Spine', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'Every 4s a character is on the field, they will deal 6% more DMG and take 3% more DMG. This effect has a maximum of 5 stacks and will not be reset if the character leaves the field, but will be reduced by 1 stack when the character takes DMG.', -- affixDescription
        NULL -- description
),
(        'Lithic Blade', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'For every character in the party who hails from Liyue, the character who equips this weapon gains a 7% ATK increase and a 3% CRIT Rate increase. This effect stacks up to 4 times.', -- affixDescription
        NULL -- description
),
(        'Snow-Tombed Starsilver', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'Physical DMG Bonus', -- secondaryStat
        NULL, -- weaponAffix
        'Hitting an opponent with Normal and Charged Attacks has a 60% chance of forming and dropping an Everfrost Icicle above them, dealing AoE DMG equal to 80% of ATK. Opponents affected by Cryo are instead dealt DMG equal to 200% of ATK. Can only occur once every 10s.', -- affixDescription
        NULL -- description
),
(        'Luxurious Sea-Lord', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Elemental Burst DMG by 12%. When Elemental Burst hits opponents, there is a 100% chance of summoning a huge onrush of tuna that deals 100% ATK as AoE DMG. This effect can occur once every 15s.', -- affixDescription
        NULL -- description
),
(        'Katsuragikiri Nagamasa', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Elemental Skill DMG by 6%. After Elemental Skill hits an opponent, the character loses 3 Energy but regenerates 3 Energy every 2s for the next 6s. This effect can occur once every 10s. Can be triggered even when the character is not on the field.', -- affixDescription
        NULL -- description
),
(        'Makhaira Aquamarine', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'The following effect will trigger every 10s: The equipping character will gain 24% of their Elemental Mastery as bonus ATK for 12s, with nearby party members gaining 30% of this buff for the same duration. Multiple instances of this weapon can allow this buff to stack. This effect will still trigger even if the character is not on the field.', -- affixDescription
        NULL -- description
),
(        'Akuoumaru', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'For every point of the entire party''s combined maximum Energy capacity, the Elemental Burst DMG of the character equipping this weapon is increased by 0.12%. A maximum of 40% increased Elemental Burst DMG can be achieved this way.', -- affixDescription
        NULL -- description
),
(        'Forest Regalia', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'After triggering Burning, Quicken, Aggravate, Spread, Bloom, Hyperbloom, or Burgeon, a Leaf of Consciousness will be created around the character for a maximum of 10s. When picked up, the Leaf will grant the character 60 Elemental Mastery for 12s. Only 1 Leaf can be generated this way every 20s. This effect can still be triggered if the character is not on the field. The Leaf of Consciousness'' effect cannot stack.', -- affixDescription
        NULL -- description
),
(        'Mailed Flower', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'Within 8s after the character''s Elemental Skill hits an opponent or the character triggers an Elemental Reaction, their ATK and Elemental Mastery will be increased by 12% and 48 respectively.', -- affixDescription
        NULL -- description
),
(        'Talking Stick', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'ATK will be increased by 16% for 15s after being affected by Pyro. This effect can be triggered once every 12s. All Elemental DMG Bonus will be increased by 12% for 15s after being affected by Hydro, Cryo, Electro, or Dendro. This effect can be triggered once every 12s.', -- affixDescription
        NULL -- description
),
(        'Tidal Shadow', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'After the wielder is healed, ATK will be increased by 24% for 8s. This can be triggered even when the character is not on the field.', -- affixDescription
        NULL -- description
),
(        '"Ultimate Overlord''s Mega Magic Sword"', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'ATK increased by 12%. That''s not all! The support from all Melusines you''ve helped in Merusea Village fills you with strength! Based on the number of them you''ve helped, your ATK is increased by up to an additional 12%.', -- affixDescription
        NULL -- description
),
(        'Portable Power Saw', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Claymore', -- weaponType
        'HP%', -- secondaryStat
        NULL, -- weaponAffix
        'When the wielder is healed or heals others, they will gain a Stoic''s Symbol that lasts 30s, up to a maximum of 3 Symbols. When using their Elemental Skill or Burst, all Symbols will be consumed and the Roused effect will be granted for 10s. For each Symbol consumed, gain 40 Elemental Mastery, and 2s after the effect occurs, 2 Energy per Symbol consumed will be restored for said character. The Roused effect can be triggered once every 15s, and Symbols can be gained even when the character is not on the field.', -- affixDescription
        NULL -- description
),
(        'Skyward Pride', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Claymore', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'Increases all DMG by 8%. After using an Elemental Burst, a vacuum blade that does 80% of ATK as DMG to opponents along its path will be created when Normal or Charged Attacks hit. Lasts for 20s or 8 vacuum blades.', -- affixDescription
        NULL -- description
),
(        'Wolf''s Gravestone', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Claymore', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Increases ATK by 20%. On hit, attacks against opponents with less than 30% HP increase all party members'' ATK by 40% for 12s. Can only occur once every 30s.', -- affixDescription
        NULL -- description
),
(        'Song of Broken Pines', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Claymore', -- weaponType
        'Physical DMG Bonus', -- secondaryStat
        NULL, -- weaponAffix
        'A part of the "Millennial Movement" that wanders amidst the winds. Increases ATK by 16%, and when Normal or Charged Attacks hit opponents, the character gains a Sigil of Whispers. This effect can be triggered once every 0.3s. When you possess 4 Sigils of Whispers, all of them will be consumed and all nearby party members will obtain the "Millennial Movement: Banner-Hymn" effect for 12s. "Millennial Movement: Banner-Hymn" increases Normal ATK SPD by 12% and increases ATK by 20%. Once this effect is triggered, you will not gain Sigils of Whispers for 20s. Of the many effects of the "Millennial Movement," buffs of the same type will not stack.', -- affixDescription
        NULL -- description
),
(        'The Unforged', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Claymore', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Shield Strength by 20%. Scoring hits on opponents increases ATK by 4% for 8s. Max 5 stacks. Can only occur once every 0.3s. While protected by a shield, this ATK increase effect is increased by 100%.', -- affixDescription
        NULL -- description
),
(        'Redhorn Stonethresher', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Claymore', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'DEF is increased by 28%. Normal and Charged Attack DMG is increased by 40% of DEF.', -- affixDescription
        NULL -- description
),
(        'Beacon of the Reed Sea', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Claymore', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'After the character''s Elemental Skill hits an opponent, their ATK will be increased by 20% for 8s. After the character takes DMG, their ATK will be increased by 20% for 8s. The 2 aforementioned effects can be triggered even when the character is not on the field. Additionally, when not protected by a shield, the character''s Max HP will be increased by 32%.', -- affixDescription
        NULL -- description
),
(        'Considered Judgment', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Claymore', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'Increases ATK by 20%. When characters in your party obtain Elemental Shards from Crystallize reactions, the equipping character will gain 1 Seal, increasing Elemental Skill DMG by 18%. The Seal lasts for 15s, and the equipper may have up to 2 Seals at once. All of the equipper''s Seals will disappear 0.2s after their Elemental Skill deals DMG.', -- affixDescription
        NULL -- description
),
(        'Beginner''s Protector', -- name
        NULL, -- imageUrl
        1, -- rarity
        'Polearm', -- weaponType
        NULL, -- secondaryStat
        NULL, -- weaponAffix
        NULL, -- affixDescription
        NULL -- description
),
(        'Iron Point', -- name
        NULL, -- imageUrl
        2, -- rarity
        'Polearm', -- weaponType
        NULL, -- secondaryStat
        NULL, -- weaponAffix
        NULL, -- affixDescription
        NULL -- description
),
(        'White Tassel', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Polearm', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Normal Attack DMG by 24%.', -- affixDescription
        NULL -- description
),
(        'Halberd', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Polearm', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Normal Attacks deal an additional 160% ATK as DMG. Can only occur once every 10s.', -- affixDescription
        NULL -- description
),
(        'Black Tassel', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Polearm', -- weaponType
        'HP%', -- secondaryStat
        NULL, -- weaponAffix
        'Increases DMG against slimes by 40%.', -- affixDescription
        NULL -- description
),
(        'Dragon''s Bane', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'Increases DMG against opponents affected by Hydro or Pyro by 20%.', -- affixDescription
        NULL -- description
),
(        'Prototype Starglitter', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'After using an Elemental Skill, increases Normal and Charged Attack DMG by 8% for 12s. Max 2 stacks.', -- affixDescription
        NULL -- description
),
(        'Crescent Pike', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'Physical DMG Bonus', -- secondaryStat
        NULL, -- weaponAffix
        'After picking up an Elemental Orb/Particle, Normal and Charged Attacks deal additional DMG equal to 20% of ATK for 5s.', -- affixDescription
        NULL -- description
),
(        'Blackcliff Pole', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'After defeating an enemy, ATK is increased by 12% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', -- affixDescription
        NULL -- description
),
(        'Deathmatch', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'If there are at least 2 opponents nearby, ATK is increased by 16% and DEF is increased by 16%. If there are fewer than 2 opponents nearby, ATK is increased by 24%.', -- affixDescription
        NULL -- description
),
(        'Lithic Spear', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'For every character in the party who hails from Liyue, the character who equips this weapon gains a 7% ATK increase and a 3% CRIT Rate increase. This effect stacks up to 4 times.', -- affixDescription
        NULL -- description
),
(        'Favonius Lance', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'CRIT Hits have a 60% chance to generate a small amount of Elemental Particles, which will regenerate 6 Energy for the character. Can only occur once every 12s.', -- affixDescription
        NULL -- description
),
(        'Royal Spear', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Upon damaging an opponent, increases CRIT Rate by 8%. Max 5 stacks. A CRIT Hit removes all stacks.', -- affixDescription
        NULL -- description
),
(        'Dragonspine Spear', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'Physical DMG Bonus', -- secondaryStat
        NULL, -- weaponAffix
        'Hitting an opponent with Normal and Charged Attacks has a 60% chance of forming and dropping an Everfrost Icicle above them, dealing AoE DMG equal to 80% of ATK. Opponents affected by Cryo are instead dealt DMG equal to 200% of ATK. Can only occur once every 10s.', -- affixDescription
        NULL -- description
),
(        'Kitain Cross Spear', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Elemental Skill DMG by 6%. After Elemental Skill hits an opponent, the character loses 3 Energy but regenerates 3 Energy every 2s for the next 6s. This effect can occur once every 10s. Can be triggered even when the character is not on the field.', -- affixDescription
        NULL -- description
),
(        '"The Catch"', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Elemental Burst DMG by 16% and Elemental Burst CRIT Rate by 6%.', -- affixDescription
        NULL -- description
),
(        'Wavebreaker''s Fin', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'For every point of the entire party''s combined maximum Energy capacity, the Elemental Burst DMG of the character equipping this weapon is increased by 0.12%. A maximum of 40% increased Elemental Burst DMG can be achieved this way.', -- affixDescription
        NULL -- description
),
(        'Moonpiercer', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'After triggering Burning, Quicken, Aggravate, Spread, Bloom, Hyperbloom, or Burgeon, a Leaf of Revival will be created around the character for a maximum of 10s. When picked up, the Leaf will grant the character 16% ATK for 12s. Only 1 Leaf can be generated this way every 20s. This effect can still be triggered if the character is not on the field.', -- affixDescription
        NULL -- description
),
(        'Missive Windspear', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Within 10s after an Elemental Reaction is triggered, ATK is increased by 12% and Elemental Mastery is increased by 48.', -- affixDescription
        NULL -- description
),
(        'Ballad of the Fjords', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'When there are at least 3 different Elemental Types in your party, Elemental Mastery will be increased by 120.', -- affixDescription
        NULL -- description
),
(        'Rightful Reward', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'HP%', -- secondaryStat
        NULL, -- weaponAffix
        'When the wielder is healed, restore 8 Energy. This effect can be triggered once every 10s, and can occur even when the character is not on the field.', -- affixDescription
        NULL -- description
),
(        'Prospector''s Drill', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Polearm', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'When the wielder is healed or heals others, they will gain a Unity''s Symbol that lasts 30s, up to a maximum of 3 Symbols. When using their Elemental Skill or Burst, all Symbols will be consumed and the Struggle effect will be granted for 10s. For each Symbol consumed, gain 3% ATK and 7% All Elemental DMG Bonus. The Struggle effect can be triggered once every 15s, and Symbols can be gained even when the character is not on the field.', -- affixDescription
        NULL -- description
),
(        'Staff of Homa', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Polearm', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'HP increased by 20%. Additionally, provides an ATK Bonus based on 0.8% of the wielder''s Max HP. When the wielder''s HP is less than 50%, this ATK Bonus is increased by an additional 1% of Max HP.', -- affixDescription
        NULL -- description
),
(        'Skyward Spine', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Polearm', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'Increases CRIT Rate by 8% and increases Normal ATK SPD by 12%. Additionally, Normal and Charged Attacks hits on opponents have a 50% chance to trigger a vacuum blade that deals 40% of ATK as DMG in a small AoE. This effect can occur no more than once every 2s.', -- affixDescription
        NULL -- description
),
(        'Vortex Vanquisher', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Polearm', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Shield Strength by 20%. Scoring hits on opponents increases ATK by 4% for 8s. Max 5 stacks. Can only occur once every 0.3s. While protected by a shield, this ATK increase effect is increased by 100%.', -- affixDescription
        NULL -- description
),
(        'Primordial Jade Winged-Spear', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Polearm', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'On hit, increases ATK by 3.2% for 6s. Max 7 stacks. This effect can only occur once every 0.3s. While in possession of the maximum possible stacks, DMG dealt is increased by 12%.', -- affixDescription
        NULL -- description
),
(        'Calamity Queller', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Polearm', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Gain 12% All Elemental DMG Bonus. Obtain Consummation for 20s after using an Elemental Skill, causing ATK to increase by 3.2% per second. This ATK increase has a maximum of 6 stacks. When the character equipped with this weapon is not on the field, Consummation''s ATK increase is doubled.', -- affixDescription
        NULL -- description
),
(        'Engulfing Lightning', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Polearm', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'ATK increased by 28% of Energy Recharge over the base 100%. You can gain a maximum bonus of 80% ATK. Gain 30% Energy Recharge for 12s after using an Elemental Burst.', -- affixDescription
        NULL -- description
),
(        'Staff of the Scarlet Sands', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Polearm', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'The equipping character gains 52% of their Elemental Mastery as bonus ATK. When an Elemental Skill hits opponents, the Dream of the Scarlet Sands effect will be gained for 10s: The equipping character will gain 28% of their Elemental Mastery as bonus ATK. Max 3 stacks.', -- affixDescription
        NULL -- description
),
(        'Hunter''s Bow', -- name
        NULL, -- imageUrl
        1, -- rarity
        'Bow', -- weaponType
        NULL, -- secondaryStat
        NULL, -- weaponAffix
        NULL, -- affixDescription
        NULL -- description
),
(        'Seasoned Hunter''s Bow', -- name
        NULL, -- imageUrl
        2, -- rarity
        'Bow', -- weaponType
        NULL, -- secondaryStat
        NULL, -- weaponAffix
        NULL, -- affixDescription
        NULL -- description
),
(        'Raven Bow', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Bow', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'Increases DMG against opponents affected by Hydro or Pyro by 12%.', -- affixDescription
        NULL -- description
),
(        'Sharpshooter''s Oath', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Bow', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'Increases DMG against weak spots by 24%.', -- affixDescription
        NULL -- description
),
(        'Recurve Bow', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Bow', -- weaponType
        'HP%', -- secondaryStat
        NULL, -- weaponAffix
        'Defeating an opponent restores 8% HP.', -- affixDescription
        NULL -- description
),
(        'Slingshot', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Bow', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'If a Normal or Charged Attack hits a target within 0.3s of being fired, increases DMG by 36%. Otherwise, decreases DMG by 10%.', -- affixDescription
        NULL -- description
),
(        'Messenger', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Bow', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'Charged Attack hits on weak points deal an additional 100% ATK DMG as CRIT DMG. Can only occur once every 10s.', -- affixDescription
        NULL -- description
),
(        'Ebony Bow', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Bow', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Increases DMG against mechanoid Ruin opponents by 40%.', -- affixDescription
        NULL -- description
),
(        'Favonius Warbow', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'CRIT Hits have a 60% chance to generate a small amount of Elemental Particles, which will regenerate 6 Energy for the character. Can only occur once every 12s.', -- affixDescription
        NULL -- description
),
(        'The Stringless', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Elemental Skill and Elemental Burst DMG by 24%.', -- affixDescription
        NULL -- description
),
(        'Sacrificial Bow', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'After damaging an opponent with an Elemental Skill, the skill has a 40% chance to end its own CD. Can only occur once every 30s.', -- affixDescription
        NULL -- description
),
(        'Royal Bow', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Upon damaging an opponent, increases CRIT Rate by 8%. Max 5 stacks. A CRIT Hit removes all stacks.', -- affixDescription
        NULL -- description
),
(        'Rust', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Normal Attack DMG by 40% but decreases Charged Attack DMG by 10%.', -- affixDescription
        NULL -- description
),
(        'Prototype Crescent', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Charged Attack hits on weak points increase Movement SPD by 10% and ATK by 36% for 10s.', -- affixDescription
        NULL -- description
),
(        'Compound Bow', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'Physical DMG Bonus', -- secondaryStat
        NULL, -- weaponAffix
        'Normal Attack and Charged Attack hits increase ATK by 4% and Normal ATK SPD by 1.2% for 6s. Max 4 stacks. Can only occur once every 0.3s.', -- affixDescription
        NULL -- description
),
(        'Blackcliff Warbow', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'After defeating an enemy, ATK is increased by 12% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', -- affixDescription
        NULL -- description
),
(        'The Viridescent Hunt', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'Upon hit, Normal and Charged Attacks have a 50% chance to generate a Cyclone, which will continuously attract surrounding opponents, dealing 40% of ATK as DMG to these opponents every 0.5s for 4s. This effect can only occur once every 14s.', -- affixDescription
        NULL -- description
),
(        'Alley Hunter', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'While the character equipped with this weapon is in the party but not on the field, their DMG increases by 2% every second up to a max of 20%. When the character is on the field for more than 4s, the aforementioned DMG buff decreases by 4% per second until it reaches 0%.', -- affixDescription
        NULL -- description
),
(        'Fading Twilight', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'Has three states, Evengleam, Afterglow, and Dawnblaze, which increase DMG dealt by 6%/10%/14% respectively. When attacks hit opponents, this weapon will switch to the next state. This weapon can change states once every 7s. The character equipping this weapon can still trigger the state switch while not on the field.', -- affixDescription
        NULL -- description
),
(        'Mitternachts Waltz', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'Physical DMG Bonus', -- secondaryStat
        NULL, -- weaponAffix
        'Normal Attack hits on opponents increase Elemental Skill DMG by 20% for 5s. Elemental Skill hits on opponents increase Normal Attack DMG by 20% for 5s.', -- affixDescription
        NULL -- description
),
(        'Windblume Ode', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'After using an Elemental Skill, receive a boon from the ancient wish of the Windblume, increasing ATK by 16% for 6s.', -- affixDescription
        NULL -- description
),
(        'Hamayumi', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Normal Attack DMG by 16% and Charged Attack DMG by 12%. When the equipping character''s Energy reaches 100%, this effect is increased by 100%.', -- affixDescription
        NULL -- description
),
(        'Predator', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Effective only on the following platform: "PlayStation Network" | Dealing Cryo DMG to opponents increases this character''s Normal and Charged Attack DMG by 10% for 6s. This effect can have a maximum of 2 stacks. Additionally, when Aloy equips Predator, ATK is increased by 66.', -- affixDescription
        NULL -- description
),
(        'Mouun''s Moon', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'For every point of the entire party''s combined maximum Energy capacity, the Elemental Burst DMG of the character equipping this weapon is increased by 0.12%. A maximum of 40% increased Elemental Burst DMG can be achieved this way.', -- affixDescription
        NULL -- description
),
(        'King''s Squire', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Obtain the Teachings of the Forest effect when unleashing Elemental Skills and Bursts, increasing Elemental Mastery by 60 for 12s. This effect will be removed when switching characters. When the Teachings of the Forest effect ends or is removed, it will deal 100% of ATK as DMG to 1 nearby opponent. The Teachings of the Forest effect can be triggered once every 20s.', -- affixDescription
        NULL -- description
),
(        'End of the Line', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'Triggers the Flowrider effect after using an Elemental Skill, dealing 80% ATK as AoE DMG upon hitting an opponent with an attack. Flowrider will be removed after 15s or after causing 3 instances of AoE DMG. Only 1 instance of AoE DMG can be caused every 2s in this way. Flowrider can be triggered once every 12s.', -- affixDescription
        NULL -- description
),
(        'Ibis Piercer', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'The character''s Elemental Mastery will increase by 40 within 6s after Charged Attacks hit opponents. Max 2 stacks. This effect can be triggered once every 0.5s.', -- affixDescription
        NULL -- description
),
(        'Scion of the Blazing Sun', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'After a Charged Attack hits an opponent, a Sunfire Arrow will descend upon the opponent hit, dealing 60% ATK as DMG, and applying the Heartsearer effect to the opponent damaged by said Arrow for 10s. Opponents affected by Heartsearer take 28% more Charged Attack DMG from the wielder. A Sunfire Arrow can be triggered once every 10s.', -- affixDescription
        NULL -- description
),
(        'Song of Stillness', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'After the wielder is healed, they will deal 16% more DMG for 8s. This can be triggered even when the character is not on the field.', -- affixDescription
        NULL -- description
),
(        'Range Gauge', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Bow', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'When the wielder is healed or heals others, they will gain a Unity''s Symbol that lasts 30s, up to a maximum of 3 Symbols. When using their Elemental Skill or Burst, all Symbols will be consumed and the Struggle effect will be granted for 10s. For each Symbol consumed, gain 3% ATK and 7% All Elemental DMG Bonus. The Struggle effect can be triggered once every 15s, and Symbols can be gained even when the character is not on the field.', -- affixDescription
        NULL -- description
),
(        'Skyward Harp', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Bow', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'Increases CRIT DMG by 20%. Hits have a 60% chance to inflict a small AoE attack, dealing 125% Physical ATK DMG. Can only occur once every 4s.', -- affixDescription
        NULL -- description
),
(        'Amos'' Bow', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Bow', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Normal and Charged Attack DMG by 12%. After a Normal or Charged Attack is fired, DMG dealt increases by a further 8% every 0.1s the arrow is in the air for up to 5 times.', -- affixDescription
        NULL -- description
),
(        'Elegy for the End', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Bow', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'A part of the "Millennial Movement" that wanders amidst the winds. Increases Elemental Mastery by 60. When the Elemental Skills or Elemental Bursts of the character wielding this weapon hit opponents, that character gains a Sigil of Remembrance. This effect can be triggered once every 0.2s and can be triggered even if said character is not on the field. When you possess 4 Sigils of Remembrance, all of them will be consumed and all nearby party members will obtain the "Millennial Movement: Farewell Song" effect for 12s. "Millennial Movement: Farewell Song" increases Elemental Mastery by 100 and increases ATK by 20%. Once this effect is triggered, you will not gain Sigils of Remembrance for 20s. Of the many effects of the "Millennial Movement," buffs of the same type will not stack.', -- affixDescription
        NULL -- description
),
(        'Polar Star', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Bow', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'Elemental Skill and Elemental Burst DMG increased by 12%. After a Normal Attack, Charged Attack, Elemental Skill or Elemental Burst hits an opponent, 1 stack of Ashen Nightstar will be gained for 12s. When 1/2/3/4 stacks of Ashen Nightstar are present, ATK is increased by 10/20/30/48%. The stack of Ashen Nightstar created by the Normal Attack, Charged Attack, Elemental Skill or Elemental Burst will be counted independently of the others.', -- affixDescription
        NULL -- description
),
(        'Aqua Simulacra', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Bow', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'HP is increased by 16%. When there are opponents nearby, the DMG dealt by the wielder of this weapon is increased by 20%. This will take effect whether the character is on-field or not.', -- affixDescription
        NULL -- description
),
(        'Thundering Pulse', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Bow', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'Increases ATK by 20% and grants the might of the Thunder Emblem. At stack levels 1/2/3, the Thunder Emblem increases Normal Attack DMG by 12/24/40%. The character will obtain 1 stack of Thunder Emblem in each of the following scenarios: Normal Attack deals DMG (stack lasts 5s), casting Elemental Skill (stack lasts 10s); Energy is less than 100% (stack disappears when Energy is full). Each stack''s duration is calculated independently.', -- affixDescription
        NULL -- description
),
(        'Hunter''s Path', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Bow', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'Gain 12% All Elemental DMG Bonus. Obtain the Tireless Hunt effect after hitting an opponent with a Charged Attack. This effect increases Charged Attack DMG by 160% of Elemental Mastery. This effect will be removed after 12 Charged Attacks or 10s. Only 1 instance of Tireless Hunt can be gained every 12s.', -- affixDescription
        NULL -- description
),
(        'The First Great Magic', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Bow', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'DMG dealt by Charged Attacks increased by 16%. For every party member with the same Elemental Type as the wielder (including the wielder themselves), gain 1 Gimmick stack. For every party member with a different Elemental Type from the wielder, gain 1 Theatrics stack. When the wielder has 1/2/3 or more Gimmick stacks, ATK will be increased by 16%/32%/48%. When the wielder has 1/2/3 or more Theatrics stacks, Movement SPD will be increased by 4%/7%/10%.', -- affixDescription
        NULL -- description
),
(        'Apprentice''s Notes', -- name
        NULL, -- imageUrl
        1, -- rarity
        'Catalyst', -- weaponType
        NULL, -- secondaryStat
        NULL, -- weaponAffix
        NULL, -- affixDescription
        NULL -- description
),
(        'Pocket Grimoire', -- name
        NULL, -- imageUrl
        2, -- rarity
        'Catalyst', -- weaponType
        NULL, -- secondaryStat
        NULL, -- weaponAffix
        NULL, -- affixDescription
        NULL -- description
),
(        'Magic Guide', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Catalyst', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'Increases DMG against opponents affected by Hydro or Electro by 12%.', -- affixDescription
        NULL -- description
),
(        'Thrilling Tales of Dragon Slayers', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Catalyst', -- weaponType
        'HP%', -- secondaryStat
        NULL, -- weaponAffix
        'When switching characters, the new character taking the field has their ATK increased by 24% for 10s. This effect can only occur once every 20s.', -- affixDescription
        NULL -- description
),
(        'Otherworldly Story', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Catalyst', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'Picking up an Elemental Energy Orb/Particle recovers 1% HP.', -- affixDescription
        NULL -- description
),
(        'Emerald Orb', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Catalyst', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'Upon causing a Vaporize, Electro-Charged, Frozen, Bloom, or a Hydro-infused Swirl reaction, increases ATK by 20% for 12s.', -- affixDescription
        NULL -- description
),
(        'Twin Nephrite', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Catalyst', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'Defeating an opponent increases Movement SPD and ATK by 12% for 15s.', -- affixDescription
        NULL -- description
),
(        'Amber Bead', -- name
        NULL, -- imageUrl
        3, -- rarity
        'Catalyst', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'Normal Attack hits increase all Elemental DMG by 6% for 6s. Max 2 stacks.', -- affixDescription
        NULL -- description
),
(        'Favonius Codex', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'CRIT Hits have a 60% chance to generate a small amount of Elemental Particles, which will regenerate 6 Energy for the character. Can only occur once every 12s.', -- affixDescription
        NULL -- description
),
(        'The Widsith', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'When the character takes the field, they will gain a random theme song for 10s. This can only occur once every 30s. Recitative: ATK is increased by 60%. Aria: Increases all Elemental DMG by 48%. Interlude: Elemental Mastery is increased by 240.', -- affixDescription
        NULL -- description
),
(        'Sacrificial Fragments', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'After damaging an opponent with an Elemental Skill, the skill has a 40% chance to end its own CD. Can only occur once every 30s.', -- affixDescription
        NULL -- description
),
(        'Royal Grimoire', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Upon damaging an opponent, increases CRIT Rate by 8%. Max 5 stacks. A CRIT Hit removes all stacks.', -- affixDescription
        NULL -- description
),
(        'Solar Pearl', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'Normal Attack hits increase Elemental Skill and Elemental Burst DMG by 20% for 6s. Likewise, Elemental Skill or Elemental Burst hits increase Normal Attack DMG by 20% for 6s.', -- affixDescription
        NULL -- description
),
(        'Prototype Amber', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'HP%', -- secondaryStat
        NULL, -- weaponAffix
        'Using an Elemental Burst regenerates 4 Energy every 2s for 6s. All party members will regenerate 4% HP every 2s for this duration.', -- affixDescription
        NULL -- description
),
(        'Mappa Mare', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'Triggering an Elemental reaction grants a 8% Elemental DMG Bonus for 10s. Max 2 stacks.', -- affixDescription
        NULL -- description
),
(        'Blackcliff Agate', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'After defeating an enemy, ATK is increased by 12% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', -- affixDescription
        NULL -- description
),
(        'Eye of Perception', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Normal and Charged Attacks have a 50% chance to fire a Bolt of Perception, dealing 240% ATK as DMG. This bolt can bounce between opponents a maximum of 4 times. This effect can occur once every 12s.', -- affixDescription
        NULL -- description
),
(        'Wine and Song', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'Hitting an opponent with a Normal Attack decreases the Stamina consumption of Sprint or Alternate Sprint by 14% for 5s. Additionally, using a Sprint or Alternate Sprint ability increases ATK by 20% for 5s.', -- affixDescription
        NULL -- description
),
(        'Frostbearer', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Hitting an opponent with Normal and Charged Attacks has a 60% chance of forming and dropping an Everfrost Icicle above them, dealing AoE DMG equal to 80% of ATK. Opponents affected by Cryo are instead dealt DMG equal to 200% of ATK. Can only occur once every 10s.', -- affixDescription
        NULL -- description
),
(        'Dodoco Tales', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Normal Attack hits on opponents increase Charged Attack DMG by 16% for 6s. Charged Attack hits on opponents increase ATK by 8% for 6s.', -- affixDescription
        NULL -- description
),
(        'Hakushin Ring', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'After the character equipped with this weapon triggers an Electro elemental reaction, nearby party members of an Elemental Type involved in the elemental reaction receive a 10% Elemental DMG Bonus for their element, lasting 6s. Elemental Bonuses gained in this way cannot be stacked.', -- affixDescription
        NULL -- description
),
(        'Oathsworn Eye', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Energy Recharge by 24% for 10s after using an Elemental Skill.', -- affixDescription
        NULL -- description
),
(        'Wandering Evenstar', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'The following effect will trigger every 10s: The equipping character will gain 24% of their Elemental Mastery as bonus ATK for 12s, with nearby party members gaining 30% of this buff for the same duration. Multiple instances of this weapon can allow this buff to stack. This effect will still trigger even if the character is not on the field.', -- affixDescription
        NULL -- description
),
(        'Fruit of Fulfillment', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'Obtain the "Wax and Wane" effect after an Elemental Reaction is triggered, gaining 24 Elemental Mastery while losing 5% ATK. For every 0.3s, 1 stack of Wax and Wane can be gained. Max 5 stacks. For every 6s that go by without an Elemental Reaction being triggered, 1 stack will be lost. This effect can be triggered even when the character is off-field.', -- affixDescription
        NULL -- description
),
(        'Sacrificial Jade', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'When not on the field for more than 5s, Max HP will be increased by 32% and Elemental Mastery will be increased by 40. These effects will be canceled after the wielder has been on the field for 10s.', -- affixDescription
        NULL -- description
),
(        'Flowing Purity', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'When using an Elemental Skill, All Elemental DMG Bonus will be increased by 8% for 15s, and a Bond of Life worth 24% of Max HP will be granted. This effect can be triggered once every 10s. When the Bond of Life is cleared, every 1,000 HP cleared in the process will provide 2% All Elemental DMG Bonus, up to a maximum of 12%. This effect lasts 15s.', -- affixDescription
        NULL -- description
),
(        'Ballad of the Boundless Blue', -- name
        NULL, -- imageUrl
        4, -- rarity
        'Catalyst', -- weaponType
        'Energy Recharge', -- secondaryStat
        NULL, -- weaponAffix
        'Within 6s after Normal or Charged Attacks hit an opponent, Normal Attack DMG will be increased by 8% and Charged Attack DMG will be increased by 6%. Max 3 stacks. This effect can be triggered once every 0.3s.', -- affixDescription
        NULL -- description
),
(        'Skyward Atlas', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Catalyst', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Elemental DMG Bonus by 12%. Normal Attack hits have a 50% chance to earn the favor of the clouds, which actively seek out nearby opponents to attack for 15s, dealing 160% ATK DMG. Can only occur once every 30s.', -- affixDescription
        NULL -- description
),
(        'Lost Prayer to the Sacred Winds', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Catalyst', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Movement SPD by 10%. When in battle, gain an 8% Elemental DMG Bonus every 4s. Max 4 stacks. Lasts until the character falls or leaves combat.', -- affixDescription
        NULL -- description
),
(        'Memory of Dust', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Catalyst', -- weaponType
        'ATK%', -- secondaryStat
        NULL, -- weaponAffix
        'Increases Shield Strength by 20%. Scoring hits on opponents increases ATK by 4% for 8s. Max 5 stacks. Can only occur once every 0.3s. While protected by a shield, this ATK increase effect is increased by 100%.', -- affixDescription
        NULL -- description
),
(        'Jadefall''s Splendor', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Catalyst', -- weaponType
        'HP%', -- secondaryStat
        NULL, -- weaponAffix
        'For 3s after using an Elemental Burst or creating a shield, the equipping character can gain the Primordial Jade Regalia effect: Restore 4.5 Energy every 2.5s, and gain 0.3% Elemental DMG Bonus for their corresponding Elemental Type for every 1,000 Max HP they possess, up to 12%. Primordial Jade Regalia will still take effect even if the equipping character is not on the field.', -- affixDescription
        NULL -- description
),
(        'Everlasting Moonglow', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Catalyst', -- weaponType
        'HP%', -- secondaryStat
        NULL, -- weaponAffix
        'Healing Bonus increased by 10%, Normal Attack DMG is increased by 1% of the Max HP of the character equipping this weapon. For 12s after using an Elemental Burst, Normal Attacks that hit opponents will restore 0.6 Energy. Energy can be restored this way once every 0.1s.', -- affixDescription
        NULL -- description
),
(        'Kagura''s Verity', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Catalyst', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'Gains the Kagura Dance effect when using an Elemental Skill, causing the Elemental Skill DMG of the character wielding this weapon to increase by 12% for 16s. Max 3 stacks. This character will gain 12% All Elemental DMG Bonus when they possess 3 stacks.', -- affixDescription
        NULL -- description
),
(        'A Thousand Floating Dreams', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Catalyst', -- weaponType
        'Elemental Mastery', -- secondaryStat
        NULL, -- weaponAffix
        'Party members other than the equipping character will provide the equipping character with buffs based on whether their Elemental Type is the same as the latter or not. If their Elemental Types are the same, increase Elemental Mastery by 32. If not, increase the equipping character''s DMG Bonus from their Elemental Type by 10%. Each of the aforementioned effects can have up to 3 stacks. Additionally, all nearby party members other than the equipping character will have their Elemental Mastery increased by 40. Multiple such effects from multiple such weapons can stack.', -- affixDescription
        NULL -- description
),
(        'Tulaytullah''s Remembrance', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Catalyst', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'Normal Attack SPD is increased by 10%. After the wielder unleashes an Elemental Skill, Normal Attack DMG will increase by 4.8% every second for 14s. After hitting an opponent with a Normal Attack during this duration, Normal Attack DMG will be increased by 9.6%. This increase can be triggered once every 0.3s. The maximum Normal Attack DMG increase per single duration of the overall effect is 48%. The effect will be removed when the wielder leaves the field, and using the Elemental Skill again will reset all DMG buffs.', -- affixDescription
        NULL -- description
),
(        'Cashflow Supervision', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Catalyst', -- weaponType
        'CRIT Rate', -- secondaryStat
        NULL, -- weaponAffix
        'ATK is increased by 16%. When current HP increases or decreases, Normal Attack DMG will be increased by 16% and Charged Attack DMG will be increased by 14% for 4s. Max 3 stacks. This effect can be triggered once every 0.3s. When the wielder has 3 stacks, ATK SPD will be increased by 8%.', -- affixDescription
        NULL -- description
),
(        'Tome of the Eternal Flow', -- name
        NULL, -- imageUrl
        5, -- rarity
        'Catalyst', -- weaponType
        'CRIT DMG', -- secondaryStat
        NULL, -- weaponAffix
        'HP is increased by 16%. When current HP increases or decreases, Charged Attack DMG will be increased by 14% for 4s. Max 3 stacks. This effect can be triggered once every 0.3s. When the character has 3 stacks or a third stack''s duration refreshes, 8 Energy will be restored. This Energy restoration effect can be triggered once every 12s.', -- affixDescription
        NULL -- description
);
