#> stage:boss/6/move/3/summon
# 
# item summon spawner
# 
# 

summon minecraft:spawner_minecart 10012 50 -178 \
{\
    Delay: 0,\
    \
    MinSpawnDelay: 30,\
    MaxSpawnDelay: 30,\
    SpawnCount: 90,\
    SpawnRange: 18,\
    \
    MaxNearbyEntities: 800,\
    RequiredPlayerRange: 30,\
    \
    SpawnPotentials: [\
        {\
            data: { \
                entity: {\
                    id: "minecraft:item", \
                    Item: {\
                        id: "minecraft:dripstone_block", \
                        components: {"minecraft:enchantment_glint_override": true}\
                    }, \
                    Invulnerable: true, Glowing: true, PickupDelay: -1, Age: 5920, \
                    Tags: ['gimmick', 'gimmick.item.s9'], NoGravity: true\
                }\
            }, weight: 1\
        }\
    ], Tags: ['gimmick', 'gimmick.spawner.s6'], Invulnerable: true, NoGravity: true\
}
