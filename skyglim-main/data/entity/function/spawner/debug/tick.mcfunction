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
    MinSpawnDelay: 0,\
    MaxSpawnDelay: 0,\
    SpawnCount: 2,\
    SpawnRange: 3,\
    \
    MaxNearbyEntities: 4,\
    RequiredPlayerRange: 12,\
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
                            Tags: ["req_setdata", "100004"],\
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
                            ArmorItems: [\
                                {},\
                                {},\
                                {},\
                                {id: "minecraft:diamond_helmet", components: {"minecraft:unbreakable": {}}}\
                            ],\
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
                            Tags: ["req_setdata", "100005"],\
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
                            ArmorItems: [\
                                {},\
                                {},\
                                {},\
                                {id: "minecraft:diamond_helmet", components: {"minecraft:unbreakable": {}}}\
                            ],\
                            ArmorDropChances: [0.0f, 0.0f, 0.0f, 0.0f]\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        }\
    ]\
}
