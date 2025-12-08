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
                            CustomName: {text: "サンドバッグ", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 100000,\
                                    "current_hp": 100000,\
                                    \
                                    "dmg": 15,\
                                    "str": 10,\
                                    "def": 3,\
                                    \
                                    "xp": 120,\
                                    \
                                    "lore1": "ちょっと強めのゾンビ。",\
                                    "lore2": "そんなに経験値はおいしくないね。",\
                                    \
                                    "loot": "debug/test"\
                                }\
                            }\
                        }
