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
    MaxSpawnDelay: 500,\
    SpawnCount: 4,\
    SpawnRange: 4,\
    \
    MaxNearbyEntities: 4,\
    RequiredPlayerRange: 8,\
    \
    SpawnPotentials: [\
        {\
            data: {\
                entity: {\
                    id: "minecraft:villager", Health: -1, DeathTime: 20,\
                    attributes: [{id: "minecraft:scale", base: 0}],\
                    Passengers: [\
                        {\
                            id: "minecraft:stray",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.225}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:blue_wool", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:leather_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 6586074, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:leather_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 6586074, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:leather_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 6586074, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:bow", components: {"minecraft:enchantment_glint_override": true}},\
                                offhand: {id: "minecraft:tipped_arrow", components: {"minecraft:enchantment_glint_override": true, "minecraft:potion_contents": {custom_color: 4090018, custom_effects: [{id: "minecraft:slowness", amplifier: 1, duration: 140}]}}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.5.2.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 16200,\
                                    "current_hp": 16200,\
                                    \
                                    "dmg": 18,\
                                    "str": 45,\
                                    "def": 12,\
                                    \
                                    "xp": 48,\
                                    \
                                    "lore": "entity.stage.5.2.lore",\
                                    \
                                    "loot": "5/5-2"\
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
        }\
    ], Tags: ["Spawner"], Invulnerable: true, NoGravity: true\
}
