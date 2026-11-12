#> entity:spawner/stage/5/1
# 
# {"xyz": "~ ~ ~"} で場所を指定する
# equipment: head, chest, legs, feet, mainhand, offhand, saddle, (body)
# 

summon minecraft:spawner_minecart ~ ~ ~ \
{\
    Delay: 0,\
    \
    MinSpawnDelay: 250,\
    MaxSpawnDelay: 400,\
    SpawnCount: 3,\
    SpawnRange: 4,\
    \
    MaxNearbyEntities: 4,\
    RequiredPlayerRange: 16,\
    \
    SpawnPotentials: [\
        {\
            data: {\
                entity: {\
                    id: "minecraft:villager", Health: -1, DeathTime: 20,\
                    attributes: [{id: "minecraft:scale", base: 0}],\
                    Passengers: [\
                        {\
                            id: "minecraft:skeleton",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.25},\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:white_concrete", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 9204278,"minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:chainmail_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 7303023, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:iron_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 5657941, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:leather_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 12302263, "minecraft:enchantment_glint_override": true}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.ex2.1.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 112500,\
                                    "current_hp": 112500,\
                                    \
                                    "dmg": 76,\
                                    "str": 56,\
                                    "def": 0,\
                                    \
                                    "xp": 202,\
                                    \
                                    "lore": "entity.stage.ex2.1.lore",\
                                    \
                                    "loot": "ex2/ex2-1"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy"\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        },\
        {\
            data: {\
                entity: {\
                    id: "minecraft:villager", Health: -1, DeathTime: 20,\
                    attributes: [{id: "minecraft:scale", base: 0}],\
                    Passengers: [\
                        {\
                            id: "minecraft:husk",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.22},\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:white_stained_glass", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 9204278,"minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:iron_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 7303023, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:leather_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 10269853, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:chainmail_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 12302263, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:white_banner", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 12302263, "minecraft:enchantment_glint_override": true, "minecraft:enchantments": {"entity:rate": 8}}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.ex2.2.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 72500,\
                                    "current_hp": 72500,\
                                    \
                                    "dmg": 81,\
                                    "str": 57,\
                                    "def": 54,\
                                    \
                                    "xp": 203,\
                                    \
                                    "lore": "entity.stage.ex2.2.lore",\
                                    \
                                    "loot": "ex2/ex2-2"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy"\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        },\
        {\
            data: {\
                entity: {\
                    id: "minecraft:villager", Health: -1, DeathTime: 20,\
                    attributes: [{id: "minecraft:scale", base: 0}],\
                    Passengers: [\
                        {\
                            id: "minecraft:magma_cube",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.22},\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:white_stained_glass", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 9204278,"minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:iron_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 7303023, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:leather_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 10269853, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:chainmail_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 12302263, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:white_banner", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 12302263, "minecraft:enchantment_glint_override": true}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.ex2.3.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 74000,\
                                    "current_hp": 74000,\
                                    \
                                    "dmg": 79,\
                                    "str": 61,\
                                    "def": 53,\
                                    \
                                    "xp": 203,\
                                    \
                                    "lore": "entity.stage.ex2.3.lore",\
                                    \
                                    "loot": "ex2/ex2-3"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy", Size: 2, Tags: ['leave.aoe', 'leave.aoe.ex2.3']\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        }\
    ], Tags: ["Spawner"], Invulnerable: true, NoGravity: true\
}
