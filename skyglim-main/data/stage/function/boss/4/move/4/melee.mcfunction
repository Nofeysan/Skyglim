#> stage:boss/1/move/4/*
# 
# S1 眷属
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
                                {id:"minecraft:movement_speed", base:0.265}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:yellow_concrete_powder", components: {"minecraft:unbreakable": {}}}\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.4.boss.friend.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 12000,\
                                    "current_hp": 12000,\
                                    \
                                    "dmg": 17,\
                                    "str": 20,\
                                    "def": 12,\
                                    \
                                    "xp": 12,\
                                    \
                                    "lore": "entity.stage.4.boss.friend.lore",\
                                    \
                                    "loot": "4/4-4"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false},\
                                {id: "minecraft:invisibility", duration: 2100000000, amplifier: 0, show_particles: false},\
                                {id: "minecraft:glowing", duration: 2100000000, amplifier: 0, show_particles: false}\
                            ], \
                            Tags: ["gimmick", "gimmick.enemy.s4"]\
                        }

