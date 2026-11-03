#> stage:boss/2/move/5/summon
# 
# tnt 召喚
# 
# 

summon minecraft:spawner_minecart 9798 3 -358 \
{\
    SpawnCount: 120, Delay: 0, MinSpawnDelay: 1000, MaxSpawnDelay: 1000, MaxNearbyEntities: 1000, \
    SpawnRange: 20, \
    SpawnData: { \
        entity: { \
            id: "minecraft:item", \
            Item: {\
                id: "minecraft:tnt", \
                components: {\
                    "minecraft:enchantment_glint_override": true, \
                    "minecraft:max_stack_size": 1\
                }\
            }, \
            PickupDelay: 4000, \
            Tags: ["gimmick.tnt", "gimmick"], \
            Glowing: true\
        }\
    }, Tags: ["gimmick", "gimmick.spawn"], RequiredPlayerRange: 20\
}

# sound
playsound minecraft:entity.item.pickup voice @a ~ ~ ~ 1 1
