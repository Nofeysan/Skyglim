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
                                {id:"minecraft:movement_speed", base: 0.24}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:leather_helmet", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 13750721, "minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:leather_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 11184804, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:copper_pickaxe", components: {"minecraft:enchantment_glint_override": true}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.9.boss.friend.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 28400,\
                                    "current_hp": 28400,\
                                    \
                                    "dmg": 30,\
                                    "str": 24,\
                                    "def": 17,\
                                    \
                                    "xp": 73,\
                                    \
                                    "lore": "entity.stage.9.boss.friend.lore",\
                                    \
                                    "loot": "9/9-3"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy", Silent: false,\
                            Tags: ["gimmick", "gimmick.enemy.s9"]\
                        }

