#> stage:boss/2/move/2/*
# 
# S1 眷属
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
                                {id:"minecraft:movement_speed", base:0.26}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:oak_log", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 1399829, "minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:leather_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 1399829, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:leather_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 1399829, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:leather_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 1399829, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:bow", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                                offhand: {id: "minecraft:tipped_arrow", components: {"minecraft:potion_contents": {custom_color: 5974462, custom_effects: [{id: "minecraft:slowness", duration: 60, amplifier: 1}]}, "minecraft:enchantment_glint_override": true}}\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.2.2.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 5200,\
                                    "current_hp": 5200,\
                                    \
                                    "dmg": 8,\
                                    "str": 18,\
                                    "def": 2,\
                                    \
                                    "xp": 2,\
                                    \
                                    "lore": "entity.stage.2.2.lore",\
                                    \
                                    "loot": "2/2-1"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ], \
                            Tags: ["gimmick"]\
                        }

