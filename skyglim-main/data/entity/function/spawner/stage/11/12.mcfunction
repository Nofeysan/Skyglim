#> entity:spawner/stage/5/1
# 
# {"xyz": "~ ~ ~"} で場所を指定する
# equipment: head, chest, legs, feet, mainhand, offhand, saddle, (body)
# 

summon minecraft:spawner_minecart ~ ~ ~ \
{\
    Delay: 0,\
    \
    MinSpawnDelay: 250,\
    MaxSpawnDelay: 400,\
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
                            id: "minecraft:vindicator",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.255}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:glass", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:elytra", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 9802598, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:leather_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 7384001, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:netherite_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 15185735, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:end_rod", components: {"minecraft:enchantment_glint_override": true}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.11.2.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 34000,\
                                    "current_hp": 34000,\
                                    \
                                    "dmg": 46,\
                                    "str": 33,\
                                    "def": 26,\
                                    \
                                    "xp": 116,\
                                    \
                                    "lore": "entity.stage.11.2.lore",\
                                    \
                                    "loot": "11/11-2"\
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
    ], Tags: ["Spawner"], Invulnerable: true, NoGravity: true\
}
