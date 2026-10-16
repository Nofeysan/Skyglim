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
                                {id:"minecraft:movement_speed", base: 0.22}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:black_stained_glass", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}}\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.6.3.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 7000,\
                                    "current_hp": 7000,\
                                    \
                                    "dmg": 25,\
                                    "str": 40,\
                                    "def": 15,\
                                    \
                                    "xp": 9,\
                                    \
                                    "lore": "entity.stage.6.3.lore",\
                                    \
                                    "loot": "6/kill_aoe"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false},\
                                {id: "minecraft:invisibility", duration: -1, show_particles: false}\
                            ],\
                            Team: "enemy", Silent: true, NoAI: true, \
                            Tags: ["gimmick", "gimmick.aoe.enemy.s6"]\
                        }

