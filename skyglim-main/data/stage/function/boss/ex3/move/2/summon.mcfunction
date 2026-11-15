#> stage:boss/6/move/3/summon
# 
# item summon spawner
# 
# 

summon minecraft:spawner_minecart 9957 112 -550 \
{\
    Delay: 0,\
    \
    MinSpawnDelay: 60,\
    MaxSpawnDelay: 60,\
    SpawnCount: 180,\
    SpawnRange: 24,\
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
                        id: "minecraft:cake", \
                        components: {"minecraft:enchantment_glint_override": true}\
                    }, \
                    Invulnerable: true, Glowing: true, PickupDelay: -1, Age: 5800, \
                    Tags: ['gimmick', 'gimmick.item.ex3'], NoGravity: true\
                }\
            }, weight: 1\
        }\
    ], Tags: ['gimmick', 'gimmick.spawner.ex3'], Invulnerable: true, NoGravity: true\
}
