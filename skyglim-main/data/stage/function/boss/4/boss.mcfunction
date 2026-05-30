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
                                {id:"minecraft:movement_speed", base:0.23}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:bookshelf", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:leather_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 2171267}},\
                                legs: {id: "minecraft:leather_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 2171267}},\
                                feet: {id: "minecraft:leather_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 2171267}},\
                                mainhand: {id: "minecraft:bow", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true, "minecraft:enchantments": {"minecraft:multishot": 1}}},\
                                offhand: {id: "minecraft:tipped_arrow", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true, "minecraft:potion_contents": {custom_color: 1, custom_effects: [{id: "minecraft:levitation", duration: 10, amplifier: 4}, {id: "minecraft:slowness", duration: 20, amplifier: 2}]}}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.4.boss.name", color: "#be2152", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 370000,\
                                    "current_hp": 370000,\
                                    \
                                    "dmg": 54,\
                                    "str": 26,\
                                    "def": 45,\
                                    \
                                    "xp": 525,\
                                    \
                                    "lore": "entity.stage.4.boss.lore",\
                                    \
                                    "loot": "tutorial"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ], \
                            Tags: ["boss", "s4"]\
                        }

