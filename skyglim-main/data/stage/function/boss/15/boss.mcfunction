#> stage:boss/1/boss
# 
# S10 boss
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
                                {id: "minecraft:movement_speed", base:0.24}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:white_stained_glass", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 14187321, "minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:iron_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 14187321, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:chainmail_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 14187321, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:leather_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 4082844, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:trident", components: {"minecraft:enchantment_glint_override": true}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.15.boss.name", color: "#be2152", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 1347000,\
                                    "current_hp": 1347000,\
                                    \
                                    "dmg": 62,\
                                    "str": 46,\
                                    "def": 90,\
                                    \
                                    "xp": 6200,\
                                    \
                                    "lore": "entity.stage.15.boss.lore",\
                                    \
                                    "loot": "tutorial"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ], \
                            Tags: ["boss", "s15"]\
                        }

