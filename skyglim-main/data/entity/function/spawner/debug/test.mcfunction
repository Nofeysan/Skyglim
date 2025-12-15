#> entity:spawner/debug/test
# 
# {xyz: "~ ~ ~"} で場所を指定する
# equipment: head, chest, legs, feet, mainhand, offhand, saddle, (body)
# 

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
                    id: "minecraft:villager", Health: -1, DeathTime: 20,\
                    attributes: [{id: "minecraft:scale", base: 0}],\
                    Passengers: [\
                        {\
                            id: "minecraft:zombie",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base:0.22}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:diamond_helmet", components: {"minecraft:unbreakable": {}}},\
                                feet: {id: "minecraft:diamond_boots", components: {"minecraft:unbreakable": {}}},\
                                mainhand: {id: "minecraft:diamond_sword", components: {"minecraft:enchantment_glint_override": true}}\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {text: "ぞんび", color: "#44ddf4", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 25000,\
                                    "current_hp": 25000,\
                                    \
                                    "dmg": 4,\
                                    "str": 3,\
                                    "def": 3,\
                                    \
                                    "xp": 12,\
                                    \
                                    "lore1": "デバッグ用のゾンビ。",\
                                    "lore2": "武器や防具はあくまで飾り。",\
                                    \
                                    "loot": "debug/test"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 0, show_icon: false, show_particles: false}\
                            ]\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        }\
    ]\
}
