##> ---
##* 
##* {"xyz": "~ ~ ~"} で場所を指定する
##* equipment: head, chest, legs, feet, mainhand, offhand, saddle, (body)
##* 

setblock ~ ~ ~ minecraft:spawner\
{\
    id: "minecraft:mob_spawner",\
    Delay: 0,\
    \
    MinSpawnDelay: 400,\
    MaxSpawnDelay: 600,\
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
                    id: "minecraft:villager", Health:-1, DeathTime:20,\
                    attributes: [{id: "minecraft:scale", base: 0}],\
                    Passengers: [\
                        {\
                            id: "minecraft:zombie",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base:0.22}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:iron_helmet", components: {"minecraft:unbreakable": {}}},\
                                feet: {id: "minecraft:iron_boots", components: {"minecraft:unbreakable": {}}},\
                                mainhand: {id: "minecraft:stone_pickaxe"}\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {text: "腐朽の採掘士", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 3000,\
                                    "current_hp": 3000,\
                                    \
                                    "dmg": 4,\
                                    "str": 3,\
                                    "def": 1,\
                                    \
                                    "xp": 2,\
                                    \
                                    "lore1": "ここで朽ち果ててしまった採掘士。",\
                                    "lore2": "肉体はそのまま腐ってしまった。",\
                                    \
                                    "loot": "1/1-1"\
                                }\
                            }\
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
                            id: "minecraft:skeleton",\
                            Tags: ["req_setdata", "s1-1-2"],\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.24}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:iron_helmet", components: {"minecraft:unbreakable": {}}},\
                                feet: {id: "minecraft:iron_boots", components: {"minecraft:unbreakable": {}}},\
                                mainhand: {id: "minecraft:stone_pickaxe"}\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {text: "屍の採掘士", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 3000,\
                                    "current_hp": 3000,\
                                    \
                                    "dmg": 4,\
                                    "str": 3,\
                                    "def": 1,\
                                    \
                                    "xp": 2,\
                                    \
                                    "lore1": "ここで朽ち果ててしまった採掘士。",\
                                    "lore2": "白骨化し、§3移動速度が少し早くなった。",\
                                    \
                                    "loot": "1/1-2"\
                                }\
                            }\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        }\
    ]\
}
