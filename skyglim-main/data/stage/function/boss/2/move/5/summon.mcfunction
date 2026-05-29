#> stage:boss/2/move/5/summon
# 
# tnt 召喚
# 
# 

summon minecraft:spawner_minecart 9878 26 -84 \
{\
    SpawnCount: 30, Delay: -1, MinSpawnDelay: 1000, MaxSpawnDelay: 1000, MaxNearbyEntities: 1000, \
    SpawnRange: 30, \
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
    }, Tags: ["gimmick", "gimmick.spawn"]\
}

# sound
playsound minecraft:entity.item.pickup voice @a ~ ~ ~ 1 1
