#> entity:spawner/stage/5/1
# 
# {"xyz": "~ ~ ~"} で場所を指定する
# equipment: head, chest, legs, feet, mainhand, offhand, saddle, (body)
# 

summon minecraft:spawner_minecart ~ ~ ~ \
{\
    Delay: 0,\
    \
    MinSpawnDelay: 250,\
    MaxSpawnDelay: 400,\
    SpawnCount: 3,\
    SpawnRange: 4,\
    \
    MaxNearbyEntities: 4,\
    RequiredPlayerRange: 16,\
    \
    SpawnPotentials: [\
        {\
            data: {\
                entity: {\
                    id: "minecraft:villager", Health: -1, DeathTime: 20,\
                    attributes: [{id: "minecraft:scale", base: 0}],\
                    Passengers: [\
                        {\
                            id: "minecraft:spider",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.31},\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:white_concrete", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 9204278,"minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:chainmail_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 7303023, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:iron_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 5657941, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:leather_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 12302263, "minecraft:enchantment_glint_override": true}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.ex4.1.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 81500,\
                                    "current_hp": 81500,\
                                    \
                                    "dmg": 83,\
                                    "str": 64,\
                                    "def": 61,\
                                    \
                                    "xp": 223,\
                                    \
                                    "lore": "entity.stage.ex4.1.lore",\
                                    \
                                    "loot": "ex4/ex4-1"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy", Tags: ['leave.potion', 'leave.potion.ex4.1']\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        },\
        {\
            data: {\
                entity: {\
                    id: "minecraft:villager", Health: -1, DeathTime: 20,\
                    attributes: [{id: "minecraft:scale", base: 0}],\
                    Passengers: [\
                        {\
                            id: "minecraft:silverfish",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.26},\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:white_concrete", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 9204278,"minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:chainmail_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 7303023, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:iron_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 5657941, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:leather_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 12302263, "minecraft:enchantment_glint_override": true}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.ex4.2.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 84000,\
                                    "current_hp": 84000,\
                                    \
                                    "dmg": 79,\
                                    "str": 69,\
                                    "def": 60,\
                                    \
                                    "xp": 226,\
                                    \
                                    "lore": "entity.stage.ex4.2.lore",\
                                    \
                                    "loot": "ex4/ex4-2"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy"\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        },\
        {\
            data: {\
                entity: {\
                    id: "minecraft:villager", Health: -1, DeathTime: 20,\
                    attributes: [{id: "minecraft:scale", base: 0}],\
                    Passengers: [\
                        {\
                            id: "minecraft:wither_skeleton",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.27},\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:black_concrete_powder", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 9204278,"minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:copper_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 12302263, "minecraft:enchantment_glint_override": true}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.ex4.3.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 86000,\
                                    "current_hp": 86000,\
                                    \
                                    "dmg": 85,\
                                    "str": 62,\
                                    "def": 65,\
                                    \
                                    "xp": 225,\
                                    \
                                    "lore": "entity.stage.ex4.3.lore",\
                                    \
                                    "loot": "ex4/ex4-3"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy", \
                            Passengers: [\
                                {\
                                    id: "spawner_minecart", \
                                    \
                                    Delay: 20, \
                                    \
                                    MinSpawnDelay: 140,\
                                    MaxSpawnDelay: 200,\
                                    SpawnCount: 4,\
                                    SpawnRange: 10,\
                                    \
                                    MaxNearbyEntities: 20,\
                                    RequiredPlayerRange: 12, \
                                    SpawnPotentials: [\
                                        {\
                                            data: { entity: {\
                                                    id: "minecraft:splash_potion", \
                                                    Item: {\
                                                        id: "minecraft:oak_leaves", \
                                                        components: {\
                                                            "minecraft:potion_contents": {\
                                                                custom_effects: [\
                                                                    {id: "minecraft:hunger", amplifier: 255, duration: 200}\
                                                                ]\
                                                            }, "minecraft:enchantment_glint_override": true\
                                                        }\
                                                    }, Glowing: true\
                                                }\
                                            }, weight: 1\
                                        },\
                                        {\
                                            data: { entity: {\
                                                    id: "minecraft:splash_potion", \
                                                    Item: {\
                                                        id: "minecraft:dark_oak_leaves", \
                                                        components: {\
                                                            "minecraft:potion_contents": {\
                                                                custom_effects: [\
                                                                    {id: "minecraft:mining_fatigue", amplifier: 0, duration: 200}\
                                                                ]\
                                                            }, "minecraft:enchantment_glint_override": true\
                                                        }\
                                                    }, Glowing: true\
                                                }\
                                            }, weight: 1\
                                        },\
                                        {\
                                            data: { entity: {\
                                                    id: "minecraft:splash_potion", \
                                                    Item: {\
                                                        id: "minecraft:spruce_leaves", \
                                                        components: {\
                                                            "minecraft:potion_contents": {\
                                                                custom_effects: [\
                                                                    {id: "minecraft:blindness", amplifier: 0, duration: 200}\
                                                                ]\
                                                            }, "minecraft:enchantment_glint_override": true\
                                                        }\
                                                    }, Glowing: true\
                                                }\
                                            }, weight: 1\
                                        }\
                                    ], Invulnerable: true, Tags: ['Passengers']\
                                }\
                            ]\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        },\
        {\
            data: {\
                entity: {\
                    id: "minecraft:villager", Health: -1, DeathTime: 20,\
                    attributes: [{id: "minecraft:scale", base: 0}],\
                    Passengers: [\
                        {\
                            id: "minecraft:endermite",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.25},\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:white_concrete", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 9204278,"minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:chainmail_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 7303023, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:iron_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 5657941, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:leather_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 12302263, "minecraft:enchantment_glint_override": true}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.ex4.4.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 83000,\
                                    "current_hp": 83000,\
                                    \
                                    "dmg": 80,\
                                    "str": 65,\
                                    "def": 63,\
                                    \
                                    "xp": 226,\
                                    \
                                    "lore": "entity.stage.ex4.4.lore",\
                                    \
                                    "loot": "ex4/ex4-4"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy", Tags: ['leave.aoe', 'leave.aoe.ex4.4']\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        }\
    ], Tags: ["Spawner"], Invulnerable: true, NoGravity: true\
}
