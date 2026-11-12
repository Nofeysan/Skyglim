#> entity:spawner/stage/5/1
# 
# {"xyz": "~ ~ ~"} で場所を指定する
# equipment: head, chest, legs, feet, mainhand, offhand, saddle, (body)
# 

summon minecraft:spawner_minecart ~ ~ ~ \
{\
    Delay: 0,\
    \
    MinSpawnDelay: 300,\
    MaxSpawnDelay: 750,\
    SpawnCount: 2,\
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
                            id: "minecraft:phantom",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.6}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:packed_ice", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:leather_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 5747395, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:leather_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 5339053, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:leather_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 4212407, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:iron_axe", components: {"minecraft:enchantment_glint_override": true}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.ex6.1.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 75900,\
                                    "current_hp": 75900,\
                                    \
                                    "dmg": 95,\
                                    "str": 85,\
                                    "def": 77,\
                                    \
                                    "xp": 257,\
                                    \
                                    "lore": "entity.stage.ex6.1.lore",\
                                    \
                                    "loot": "ex6/ex6-1"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false},\
                                {id: "minecraft:fire_resistance", duration: -1, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy", Tags: ['leave.potion', 'leave.potion.ex6.1'], Motion: [0.0d, 4.5d, 0.0d],\
                            \
                            \
                            \
                            \
                            \
                            Passengers: [\
                                {\
                                    id: "minecraft:skeleton",\
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
                                        head: {id: "minecraft:netherite_helmet", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                                        chest: {id: "minecraft:leather_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 3760232, "minecraft:enchantment_glint_override": true}},\
                                        legs: {id: "minecraft:leather_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 2244197, "minecraft:enchantment_glint_override": true}},\
                                        feet: {id: "minecraft:netherite_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 4212407, "minecraft:enchantment_glint_override": true}},\
                                        mainhand: {id: "minecraft:bow", components: {"minecraft:enchantment_glint_override": true}},\
                                        offhand: {id: "minecraft:tipped_arrow", components: {"minecraft:enchantment_glint_override": true, "minecraft:potion_contents": {custom_color: 10804088, custom_effects: [{id: "minecraft:levitation", amplifier: 7, duration: 200}, {id: "minecraft:blindness", amplifier: 0, duration: 200}, {id: "minecraft:slowness", amplifier: 3, duration: 800}, {id: "minecraft:wither", amplifier: 0, duration: 400}]}}}\
                                    },\
                                    drop_chances: {\
                                        head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                                    },\
                                    CustomName: {translate: "entity.stage.ex6.2.name", color: "#ffffff", italic: false},\
                                    data: {\
                                        "status": {\
                                            "max_hp": 101500,\
                                            "current_hp": 101500,\
                                            \
                                            "dmg": 86,\
                                            "str": 81,\
                                            "def": 2048,\
                                            \
                                            "xp": 243,\
                                            \
                                            "lore": "entity.stage.ex6.2.lore",\
                                            \
                                            "loot": "ex6/ex6-2"\
                                        }\
                                    },\
                                    active_effects: [\
                                        {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false},\
                                        {id: "minecraft:fire_resistance", duration: -1, amplifier: 1, show_icon: false, show_particles: false}\
                                    ],\
                                    Team: "enemy", Tags: ['effector', 'effector.ex6.2']\
                                }\
                            ]\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        }\
    ], Tags: ["Spawner"], Invulnerable: true, NoGravity: true\
}
