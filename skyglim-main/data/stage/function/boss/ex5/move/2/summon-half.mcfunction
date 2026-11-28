#> stage:boss/6/move/3/summon
# 
# item summon spawner
# 
# 

summon minecraft:spawner_minecart 10277 29 -93 \
{\
    Delay: 0,\
    \
    MinSpawnDelay: 50,\
    MaxSpawnDelay: 50,\
    SpawnCount: 125,\
    SpawnRange: 27,\
    \
    MaxNearbyEntities: 800,\
    RequiredPlayerRange: 130,\
    \
    SpawnPotentials: [\
        {\
            data: { \
                entity: {\
                    id: "minecraft:item", \
                    Item: {\
                        id: "minecraft:ice", \
                        components: {"minecraft:enchantment_glint_override": true}\
                    }, \
                    Invulnerable: true, Glowing: true, PickupDelay: -1, Age: 5800, \
                    Tags: ['gimmick', 'gimmick.item.ex5'], NoGravity: true\
                }\
            }, weight: 1\
        },\
        {\
            data: { \
                entity: {\
                    id: "minecraft:item", \
                    Item: {\
                        id: "minecraft:packed_ice", \
                        components: {"minecraft:enchantment_glint_override": true}\
                    }, \
                    Invulnerable: true, Glowing: true, PickupDelay: -1, Age: 5800, \
                    Tags: ['gimmick', 'gimmick.item.ex5'], NoGravity: true\
                }\
            }, weight: 1\
        },\
        {\
            data: { \
                entity: {\
                    id: "minecraft:item", \
                    Item: {\
                        id: "minecraft:blue_ice", \
                        components: {"minecraft:enchantment_glint_override": true}\
                    }, \
                    Invulnerable: true, Glowing: true, PickupDelay: -1, Age: 5800, \
                    Tags: ['gimmick', 'gimmick.item.ex5'], NoGravity: true\
                }\
            }, weight: 1\
        }\
    ], Tags: ['gimmick', 'gimmick.spawner.ex5'], Invulnerable: true, NoGravity: true\
}
