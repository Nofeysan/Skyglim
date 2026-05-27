##> [self]
##*
##* Health: int * 100    e.g.) 100.00 > 10000 にする
##* 
##* 

summon minecraft:zombie ~ ~ ~ \
                        {\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base:0.22}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:leather_helmet", components: {"minecraft:unbreakable": {}}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "story.tutorial.enemy.1", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 10000000,\
                                    "current_hp": 10000000,\
                                    \
                                    "dmg": 0,\
                                    "str": 0,\
                                    "def": 99999,\
                                    \
                                    "xp": 0,\
                                    \
                                    "lore": "story.tutorial.35.lore",\
                                    \
                                    "loot": "tutorial"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ], \
                            NoAI: true, Silent: true\
                        }
