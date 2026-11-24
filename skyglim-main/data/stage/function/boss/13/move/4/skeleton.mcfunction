#> stage:boss/1/move/4/*
# 
# S1 眷属
# 
# 

summon minecraft:bogged ~ ~ ~ \
                        {\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.25},\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:iron_helmet", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:iron_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 7705582, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:piglin_banner_pattern", components: {"minecraft:enchantment_glint_override": true}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.13.boss.friend.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 46000,\
                                    "current_hp": 46000,\
                                    \
                                    "dmg": 53,\
                                    "str": 31,\
                                    "def": 29,\
                                    \
                                    "xp": 142,\
                                    \
                                    "lore": "entity.stage.13.boss.friend.lore",\
                                    \
                                    "loot": "13/13-b"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy",\
                            Tags: ["gimmick", "gimmick.enemy.s13", 'leave.potion', 'leave.potion.s13.b']\
                        }

