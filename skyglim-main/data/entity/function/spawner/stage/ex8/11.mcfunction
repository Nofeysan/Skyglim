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
                    id: "minecraft:guardian", Health: -1, DeathTime: 20,\
                    attributes: [{id: "minecraft:scale", base: 0}],\
                    Passengers: [\
                        {\
                            id: "minecraft:drowned",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.26}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:blue_stained_glass", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:leather_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 10409183, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:leather_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 3518895, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:golden_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 4212407, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:fishing_rod", components: {"minecraft:enchantment_glint_override": true, "minecraft:enchantments": {"minecraft:knockback": 1}}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.ex8.1.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 168000,\
                                    "current_hp": 168000,\
                                    \
                                    "dmg": 140,\
                                    "str": 131,\
                                    "def": 120,\
                                    \
                                    "xp": 295,\
                                    \
                                    "lore": "entity.stage.ex8.1.lore",\
                                    \
                                    "loot": "ex8/ex8-1"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy", Tags: ['effector', 'effector.ex8.1']\
                        }\
                    ]\
                }\
            },\
            weight: 2\
        },\
        {\
            data: {\
                entity: {\
                    id: "minecraft:guardian", Health: -1, DeathTime: 20,\
                    attributes: [{id: "minecraft:scale", base: 0}],\
                    Passengers: [\
                        {\
                            id: "minecraft:drowned",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.26}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:blue_stained_glass", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:leather_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 10409183, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:leather_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 3518895, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:golden_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 4212407, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:trident", components: {"minecraft:enchantment_glint_override": true, "minecraft:enchantments": {"minecraft:knockback": 1}}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.ex8.1.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 149000,\
                                    "current_hp": 149000,\
                                    \
                                    "dmg": 127,\
                                    "str": 108,\
                                    "def": 115,\
                                    \
                                    "xp": 295,\
                                    \
                                    "lore": "entity.stage.ex8.1.lore",\
                                    \
                                    "loot": "ex8/ex8-1"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy", Tags: ['effector', 'effector.ex8.1']\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        }\
    ], Tags: ["Spawner"], Invulnerable: true, NoGravity: true\
}
