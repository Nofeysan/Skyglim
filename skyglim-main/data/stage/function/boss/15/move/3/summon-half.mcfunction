#> stage:boss/6/move/3/summon
# 
# item summon spawner
# 
# 

summon minecraft:spawner_minecart 6765 74 -10 \
{\
    Delay: 0,\
    \
    MinSpawnDelay: 100,\
    MaxSpawnDelay: 100,\
    SpawnCount: 180,\
    SpawnRange: 20,\
    \
    MaxNearbyEntities: 1200,\
    RequiredPlayerRange: 80,\
    \
    SpawnPotentials: [\
        {\
            data: { \
                entity: {\
                    id: "minecraft:item", \
                    Item: {\
                        id: "minecraft:prismarine_bricks", \
                        components: {"minecraft:enchantment_glint_override": true}\
                    }, \
                    Invulnerable: true, Glowing: true, PickupDelay: -1, Age: 5200, \
                    Tags: ['gimmick', 'gimmick.item.s15'], NoGravity: true\
                }\
            }, weight: 1\
        },\
        {\
            data: { \
                entity: {\
                    id: "minecraft:item", \
                    Item: {\
                        id: "minecraft:dark_prismarine", \
                        components: {"minecraft:enchantment_glint_override": true}\
                    }, \
                    Invulnerable: true, Glowing: true, PickupDelay: -1, Age: 5200, \
                    Tags: ['gimmick', 'gimmick.item.s15'], NoGravity: true\
                }\
            }, weight: 1\
        },\
        {\
            data: { \
                entity: {\
                    id: "minecraft:item", \
                    Item: {\
                        id: "minecraft:sea_lantern", \
                        components: {"minecraft:enchantment_glint_override": true}\
                    }, \
                    Invulnerable: true, Glowing: true, PickupDelay: -1, Age: 5200, \
                    Tags: ['gimmick', 'gimmick.item.s15'], NoGravity: true\
                }\
            }, weight: 1\
        }\
    ], Tags: ['gimmick', 'gimmick.spawner.s15'], Invulnerable: true, NoGravity: true\
}
