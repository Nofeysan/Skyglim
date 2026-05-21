#> entity:spawner/stage/3/1
# 
# {"xyz": "~ ~ ~"} で場所を指定する
# equipment: head, chest, legs, feet, mainhand, offhand, saddle, (body)
# 

setblock ~ ~ ~ minecraft:spawner\
{\
    id: "minecraft:mob_spawner",\
    Delay: 0,\
    \
    MinSpawnDelay: 400,\
    MaxSpawnDelay: 600,\
    SpawnCount: 4,\
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
                            id: "minecraft:vindicator",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.25}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                mainhand: {id: "minecraft:breeze_rod", components: {"minecraft:enchantment_glint_override": true, "minecraft:enchantments": {"minecraft:knockback": 1}}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.4.2.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 11000,\
                                    "current_hp": 11000,\
                                    \
                                    "dmg": 26,\
                                    "str": 25,\
                                    "def": 10,\
                                    \
                                    "xp": 32,\
                                    \
                                    "lore": "entity.stage.4.2.lore",\
                                    \
                                    "loot": "4/4-2"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy"\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        }\
    ]\
}
