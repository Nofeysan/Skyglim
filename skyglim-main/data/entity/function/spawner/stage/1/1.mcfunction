##> ---
##* 
##* {"xyz": "~ ~ ~"} で場所を指定する
##* 
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
                    id:"minecraft:villager",Health:-1,DeathTime:20,\
                    attributes:[{id: "minecraft:scale", base: 0}],\
                    Passengers:[\
                        {\
                            id: "minecraft:zombie",\
                            Tags: ["req_setdata", "s1-1-1"],\
                            attributes: [\
                                {id:"minecraft:armor",base:-1024},\
                                {id:"minecraft:max_health",base:1024},\
                                {id:"minecraft:max_absorption", base:1024},\
                                {id:"minecraft:knockback_resistance", base:1024},\
                                \
                                {id:"minecraft:movement_speed", base:0.22}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount:1024,\
                            HandItems: [\
                                {id: "minecraft:stone_pickaxe"},\
                                {}\
                            ],\
                            ArmorItems: [\
                                {id: "minecraft:iron_boots", components: {"minecraft:unbreakable": {}}},\
                                {},\
                                {},\
                                {id: "minecraft:iron_helmet", components: {"minecraft:unbreakable": {}}}\
                            ],\
                            HandDropChances: [0.0f, 0.0f],\
                            ArmorDropChances: [0.0f, 0.0f, 0.0f, 0.0f]\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        },\
        {\
            data: {\
                entity: {\
                    id:"minecraft:villager",Health:-1,DeathTime:20,\
                    attributes:[{id: "minecraft:scale", base: 0}],\
                    Passengers:[\
                        {\
                            id: "minecraft:skeleton",\
                            Tags: ["req_setdata", "s1-1-2"],\
                            attributes: [\
                                {id:"minecraft:armor",base:-1024},\
                                {id:"minecraft:max_health",base:1024},\
                                {id:"minecraft:max_absorption", base:1024},\
                                {id:"minecraft:knockback_resistance", base:1024},\
                                \
                                {id:"minecraft:movement_speed", base:0.24}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount:1024,\
                            HandItems: [\
                                {id: "minecraft:stone_pickaxe"},\
                                {}\
                            ],\
                            ArmorItems: [\
                                {id: "minecraft:iron_boots", components: {"minecraft:unbreakable": {}}},\
                                {},\
                                {},\
                                {id: "minecraft:iron_helmet", components: {"minecraft:unbreakable": {}}}\
                            ],\
                            HandDropChances: [0.0f, 0.0f],\
                            ArmorDropChances: [0.0f, 0.0f, 0.0f, 0.0f]\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        }\
    ]\
}
