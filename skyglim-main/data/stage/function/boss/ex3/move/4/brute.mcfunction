#> stage:boss/1/move/4/*
# 
# S1 眷属
# 
# 

summon minecraft:piglin_brute ~ ~ ~ \
                        {\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.32}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:red_wool", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:cake", components: {"minecraft:enchantment_glint_override": true, "minecraft:enchantments": {"minecraft:knockback": 2}}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.ex3.boss.friend.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 80000,\
                                    "current_hp": 80000,\
                                    \
                                    "dmg": 80,\
                                    "str": 69,\
                                    "def": 55,\
                                    \
                                    "xp": 211,\
                                    \
                                    "lore": "entity.stage.ex3.boss.friend.lore",\
                                    \
                                    "loot": "ex3/ex3-2"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy",\
                            Tags: ["gimmick", "gimmick.enemy.ex3", 'leave.potion', 'leave.potion.ex3.b'], IsImmuneToZombification: true\
                        }

