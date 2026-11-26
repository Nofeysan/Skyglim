#> stage:boss/1/move/4/*
# 
# S1 眷属
# 
# 

summon minecraft:drowned ~ ~ ~ \
                        {\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.25}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:blue_stained_glass", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:leather_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 3048719, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:leather_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 4888110, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:leather_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 8316760, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:trident", components: {"minecraft:enchantment_glint_override": true, "minecraft:enchantments": {"minecraft:knockback": 2}}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.15.boss.friend.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 55800,\
                                    "current_hp": 55800,\
                                    \
                                    "dmg": 67,\
                                    "str": 55,\
                                    "def": 43,\
                                    \
                                    "xp": 165,\
                                    \
                                    "lore": "entity.stage.15.boss.friend.lore",\
                                    \
                                    "loot": "15/15-b"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy",\
                            Tags: ["gimmick", "gimmick.enemy.s15"]\
                        }

