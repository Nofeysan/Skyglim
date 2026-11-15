#> stage:boss/1/move/4/*
# 
# S1 眷属
# 
# 

summon minecraft:slime ~ ~ ~ \
                        {\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.31}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:white_glazed_terracotta", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:leather_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 5747395, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:leather_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 5339053, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:leather_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 4212407, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:snowball", components: {"minecraft:enchantment_glint_override": true, "minecraft:enchantments": {"entity:remove_torch": 1}}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.ex5.2.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 95000,\
                                    "current_hp": 95000,\
                                    \
                                    "dmg": 84,\
                                    "str": 78,\
                                    "def": 72,\
                                    \
                                    "xp": 240,\
                                    \
                                    "lore": "entity.stage.ex5.2.lore",\
                                    \
                                    "loot": "ex5/ex5-2"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy", Tags: ['effector', 'effector.ex5.2'], Size: 3\
                        }
