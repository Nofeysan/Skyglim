#> stage:boss/2/move/5/summon
# 
# tnt 召喚
# 
# 

summon minecraft:spawner_minecart 9878 24 -84 \
{\
    SpawnCount: 70, Delay: 0, MinSpawnDelay: 1000, MaxSpawnDelay: 1000, MaxNearbyEntities: 1000, \
    SpawnRange: 16, \
    SpawnData: { \
        entity: { \
            id: "minecraft:item", \
            Item: {\
                id: "minecraft:tnt", \
                components: {\
                    "minecraft:enchantment_glint_override": true\
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
