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
                            CustomName: {translate: "entity.stage.6.5.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 15200,\
                                    "current_hp": 15200,\
                                    \
                                    "dmg": 25,\
                                    "str": 8,\
                                    "def": 16,\
                                    \
                                    "xp": 57,\
                                    \
                                    "lore": "entity.stage.6.5.lore",\
                                    \
                                    "loot": "6/6-5"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false},\
                                {id: "minecraft:invisibility", duration: -1, amplifier: 0, show_particles: false}\
                            ],\
                            Team: "enemy",\
                            Tags: ["gimmick", "gimmick.enemy.s6"]\
                        }

