#> stage:boss/6/move/3/summon
# 
# item summon spawner
# 
# 

summon minecraft:spawner_minecart 9514 154 -504 \
{\
    Delay: 0,\
    \
    MinSpawnDelay: 60,\
    MaxSpawnDelay: 60,\
    SpawnCount: 110,\
    SpawnRange: 18,\
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
                        id: "minecraft:red_stained_glass", \
                        components: {"minecraft:enchantment_glint_override": true}\
                    }, \
                    Invulnerable: true, Glowing: true, PickupDelay: -1, Age: 5800, \
                    Tags: ['gimmick', 'gimmick.item.exx'], NoGravity: true\
                }\
            }, weight: 1\
        },\
        {\
            data: { \
                entity: {\
                    id: "minecraft:item", \
                    Item: {\
                        id: "minecraft:orange_stained_glass", \
                        components: {"minecraft:enchantment_glint_override": true}\
                    }, \
                    Invulnerable: true, Glowing: true, PickupDelay: -1, Age: 5800, \
                    Tags: ['gimmick', 'gimmick.item.exx'], NoGravity: true\
                }\
            }, weight: 1\
        },\
        {\
            data: { \
                entity: {\
                    id: "minecraft:item", \
                    Item: {\
                        id: "minecraft:yellow_stained_glass", \
                        components: {"minecraft:enchantment_glint_override": true}\
                    }, \
                    Invulnerable: true, Glowing: true, PickupDelay: -1, Age: 5800, \
                    Tags: ['gimmick', 'gimmick.item.exx'], NoGravity: true\
                }\
            }, weight: 1\
        },\
        {\
            data: { \
                entity: {\
                    id: "minecraft:item", \
                    Item: {\
                        id: "minecraft:lime_stained_glass", \
                        components: {"minecraft:enchantment_glint_override": true}\
                    }, \
                    Invulnerable: true, Glowing: true, PickupDelay: -1, Age: 5800, \
                    Tags: ['gimmick', 'gimmick.item.exx'], NoGravity: true\
                }\
            }, weight: 1\
        },\
        {\
            data: { \
                entity: {\
                    id: "minecraft:item", \
                    Item: {\
                        id: "minecraft:green_stained_glass", \
                        components: {"minecraft:enchantment_glint_override": true}\
                    }, \
                    Invulnerable: true, Glowing: true, PickupDelay: -1, Age: 5800, \
                    Tags: ['gimmick', 'gimmick.item.exx'], NoGravity: true\
                }\
            }, weight: 1\
        },\
        {\
            data: { \
                entity: {\
                    id: "minecraft:item", \
                    Item: {\
                        id: "minecraft:light_blue_stained_glass", \
                        components: {"minecraft:enchantment_glint_override": true}\
                    }, \
                    Invulnerable: true, Glowing: true, PickupDelay: -1, Age: 5800, \
                    Tags: ['gimmick', 'gimmick.item.exx'], NoGravity: true\
                }\
            }, weight: 1\
        },\
        {\
            data: { \
                entity: {\
                    id: "minecraft:item", \
                    Item: {\
                        id: "minecraft:blue_stained_glass", \
                        components: {"minecraft:enchantment_glint_override": true}\
                    }, \
                    Invulnerable: true, Glowing: true, PickupDelay: -1, Age: 5800, \
                    Tags: ['gimmick', 'gimmick.item.exx'], NoGravity: true\
                }\
            }, weight: 1\
        },\
        {\
            data: { \
                entity: {\
                    id: "minecraft:item", \
                    Item: {\
                        id: "minecraft:purple_stained_glass", \
                        components: {"minecraft:enchantment_glint_override": true}\
                    }, \
                    Invulnerable: true, Glowing: true, PickupDelay: -1, Age: 5800, \
                    Tags: ['gimmick', 'gimmick.item.exx'], NoGravity: true\
                }\
            }, weight: 1\
        }\
    ], Tags: ['gimmick', 'gimmick.spawner.exx'], Invulnerable: true, NoGravity: true\
}
