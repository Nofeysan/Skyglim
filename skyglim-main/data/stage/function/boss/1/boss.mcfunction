#> stage:boss/1/boss
# 
# S1 boss
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
                                {id:"minecraft:movement_speed", base:0.23}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:iron_helmet", components: {"minecraft:unbreakable": {}}},\
                                chest: {id: "minecraft:chainmail_chestplate", components: {"minecraft:unbreakable": {}}},\
                                legs: {id: "minecraft:leather_leggings", components: {"minecraft:unbreakable": {}}},\
                                feet: {id: "minecraft:iron_boots", components: {"minecraft:unbreakable": {}}},\
                                mainhand: {id: "minecraft:iron_pickaxe", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.1.boss.name", color: "#be2152", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 120000,\
                                    "current_hp": 120000,\
                                    \
                                    "dmg": 15,\
                                    "str": 10,\
                                    "def": 12,\
                                    \
                                    "xp": 200,\
                                    \
                                    "lore": "entity.stage.1.boss.lore",\
                                    \
                                    "loot": "tutorial"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ], \
                            Tags: ["boss", "s1"]\
                        }

