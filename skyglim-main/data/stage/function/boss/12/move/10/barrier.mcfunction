#> stage:boss/11/move/10/barrier
# 
# barrier 素を召喚
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
                                {id:"minecraft:movement_speed", base: 0.25}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:glowstone", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}}\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.11.boss.barrier.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 48000,\
                                    "current_hp": 48000,\
                                    \
                                    "dmg": 42,\
                                    "str": 31,\
                                    "def": 25,\
                                    \
                                    "xp": 118,\
                                    \
                                    "lore": "entity.stage.11.boss.bariier.lore",\
                                    \
                                    "loot": "11/barrier"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy",\
                            Tags: ["gimmick", "gimmick.barrier.s11"], NoAI: true, Glowing: true\
                        }


