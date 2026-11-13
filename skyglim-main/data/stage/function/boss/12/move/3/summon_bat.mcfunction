#> entity:spawner/stage/1/1
# 
# {"xyz": "~ ~ ~"} で場所を指定する
# equipment: head, chest, legs, feet, mainhand, offhand, saddle, (body)
# 

# particle
particle minecraft:witch ~ ~ ~ 0.5 2 0.5 0.02 240

# summon
summon minecraft:bat ~ ~ ~ \
{\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.7}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:iron_helmet", components: {"minecraft:unbreakable": {}}},\
                                feet: {id: "minecraft:iron_boots", components: {"minecraft:unbreakable": {}}},\
                                mainhand: {id: "minecraft:stone_pickaxe"}\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.11.boss.friend.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 128000,\
                                    "current_hp": 128000,\
                                    \
                                    "dmg": 103,\
                                    "str": 95,\
                                    "def": 83,\
                                    \
                                    "xp": 274,\
                                    \
                                    "lore": "entity.stage.11.boss.friend.lore",\
                                    \
                                    "loot": ""\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy", Tags: ['gimmick', "gimmick.bat.s11"], Glowing: true, \
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
                                                                    {id: "minecraft:hunger", amplifier: 255, duration: 200}\
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
                                                                    {id: "minecraft:blindness", amplifier: 0, duration: 200}\
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
                        }
