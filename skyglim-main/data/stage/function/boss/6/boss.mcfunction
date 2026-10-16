#> stage:boss/6/boss
# 
# S6 boss
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
                                {id:"minecraft:movement_speed", base:0.23}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                mainhand: {id: "minecraft:stick", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true, "minecraft:enchantments": {"minecraft:knockback": 1}}}\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.6.boss.name", color: "#be2152", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 420000,\
                                    "current_hp": 420000,\
                                    \
                                    "dmg": 38,\
                                    "str": 12,\
                                    "def": 56,\
                                    \
                                    "xp": 1500,\
                                    \
                                    "lore": "entity.stage.6.boss.lore",\
                                    \
                                    "loot": "tutorial"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ], \
                            Tags: ["boss", "s6"], Size: 3\
                        }

