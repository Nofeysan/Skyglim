#> stage:boss/1/boss
# 
# S10 boss
# 
# 

summon minecraft:skeleton ~ ~ ~ \
                        {\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id: "minecraft:movement_speed", base: 0.24}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.exx.boss.name", color: "#be2152", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 3200000,\
                                    "current_hp": 3200000,\
                                    \
                                    "dmg": 165,\
                                    "str": 151,\
                                    "def": 150,\
                                    \
                                    "xp": 32000,\
                                    \
                                    "lore": "entity.stage.exx.boss.lore",\
                                    \
                                    "loot": "tutorial"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false},\
                                {id: "minecraft:invisibility", duration: -1, amplifier: 0, show_icon: false, show_particles: false}\
                            ], \
                            Tags: ["boss", "exx"], Silent: true\
                        }

