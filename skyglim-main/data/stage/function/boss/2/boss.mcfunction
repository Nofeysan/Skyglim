#> stage:boss/1/boss
# 
# S1 boss
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
                                {id:"minecraft:movement_speed", base:0.24}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:dark_oak_leaves", components: {"minecraft:unbreakable": {}}},\
                                chest: {id: "minecraft:leather_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 1399829, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:leather_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 1399829, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:leather_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 1399829, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:cherry_sapling", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                                offhand: {id: "minecraft:lantern", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}}\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.2.boss.name", color: "#be2152", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 185000,\
                                    "current_hp": 185000,\
                                    \
                                    "dmg": 18,\
                                    "str": 18,\
                                    "def": 35,\
                                    \
                                    "xp": 300,\
                                    \
                                    "lore": "entity.stage.2.boss.lore",\
                                    \
                                    "loot": "tutorial"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ], \
                            Tags: ["boss", "s2"]\
                        }

