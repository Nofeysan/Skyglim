#> stage:boss/1/move/4/*
# 
# S1 眷属
# 
# 

summon minecraft:zombie ~ ~ ~ \
                        {\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base:0.27}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:leather_helmet", components: {"minecraft:unbreakable": {}}},\
                                feet: {id: "minecraft:leather_boots", components: {"minecraft:unbreakable": {}}},\
                                mainhand: {id: "minecraft:wooden_sword", components: {"minecraft:unbreakable": {}}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.1.boss.friend.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 1600,\
                                    "current_hp": 1600,\
                                    \
                                    "dmg": 11,\
                                    "str": 5,\
                                    "def": 1,\
                                    \
                                    "xp": 2,\
                                    \
                                    "lore": "entity.stage.1.boss.friend.lore",\
                                    \
                                    "loot": "1/1-1"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ], \
                            NoAI: true, Silent: true,\
                            Tags: ["gimmick"]\
                        }

