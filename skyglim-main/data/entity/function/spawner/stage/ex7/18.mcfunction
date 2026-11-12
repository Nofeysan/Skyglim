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
    RequiredPlayerRange: 12,\
    \
    SpawnPotentials: [\
        {\
            data: {\
                entity: {\
                    id: "minecraft:villager", Health: -1, DeathTime: 20,\
                    attributes: [{id: "minecraft:scale", base: 0}],\
                    Passengers: [\
                        {\
                            id: "minecraft:skeleton",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.23}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:white_concrete", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:leather_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 16382448, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:white_concrete", components: {"minecraft:enchantment_glint_override": true}},\
                                offhand: {id: "minecraft:white_concrete", components: {"minecraft:enchantment_glint_override": true}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.ex7.8.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 158000,\
                                    "current_hp": 158000,\
                                    \
                                    "dmg": 129,\
                                    "str": 120,\
                                    "def": 106,\
                                    \
                                    "xp": 274,\
                                    \
                                    "lore": "entity.stage.ex7.8.lore",\
                                    \
                                    "loot": "ex7/ex7-2"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false},\
                                {id: "minecraft:invisibility", duration: -1, amplifier: 0, show_particles: false}\
                            ],\
                            Team: "enemy", \
                            Passengers: [\
                                {\
                                    id: "spawner_minecart", \
                                    \
                                    Delay: 20, \
                                    \
                                    MinSpawnDelay: 140,\
                                    MaxSpawnDelay: 200,\
                                    SpawnCount: 4,\
                                    SpawnRange: 10,\
                                    \
                                    MaxNearbyEntities: 20,\
                                    RequiredPlayerRange: 12, \
                                    SpawnPotentials: [\
                                        {\
                                            data: { entity: {\
                                                    id: "minecraft:splash_potion", \
                                                    Item: {\
                                                        id: "minecraft:oak_leaves", \
                                                        components: {\
                                                            "minecraft:potion_contents": {\
                                                                custom_effects: [\
                                                                    {id: "minecraft:hunger", amplifier: 255, duration: 100}\
                                                                ]\
                                                            }, "minecraft:enchantment_glint_override": true\
                                                        }\
                                                    }, Glowing: true\
                                                }\
                                            }, weight: 1\
                                        },\
                                        {\
                                            data: { entity: {\
                                                    id: "minecraft:splash_potion", \
                                                    Item: {\
                                                        id: "minecraft:dark_oak_leaves", \
                                                        components: {\
                                                            "minecraft:potion_contents": {\
                                                                custom_effects: [\
                                                                    {id: "minecraft:mining_fatigue", amplifier: 0, duration: 200}\
                                                                ]\
                                                            }, "minecraft:enchantment_glint_override": true\
                                                        }\
                                                    }, Glowing: true\
                                                }\
                                            }, weight: 1\
                                        },\
                                        {\
                                            data: { entity: {\
                                                    id: "minecraft:splash_potion", \
                                                    Item: {\
                                                        id: "minecraft:spruce_leaves", \
                                                        components: {\
                                                            "minecraft:potion_contents": {\
                                                                custom_effects: [\
                                                                    {id: "minecraft:blindness", amplifier: 0, duration: 100}\
                                                                ]\
                                                            }, "minecraft:enchantment_glint_override": true\
                                                        }\
                                                    }, Glowing: true\
                                                }\
                                            }, weight: 1\
                                        }\
                                    ], Invulnerable: true, Tags: ['Passengers']\
                                }\
                            ]\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        }\
    ], Tags: ["Spawner"], Invulnerable: true, NoGravity: true\
}
