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
                            id: "minecraft:silverfish",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.24},\
                                {id:"minecraft:scale", base: 1.4}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:leather_helmet", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 9204278,"minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:leather_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 9204278, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:bow", components: {"minecraft:enchantment_glint_override": true, "minecraft:enchantments": {"minecraft:punch": 2}}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.12.3.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 39000,\
                                    "current_hp": 39000,\
                                    \
                                    "dmg": 48,\
                                    "str": 36,\
                                    "def": 27,\
                                    \
                                    "xp": 130,\
                                    \
                                    "lore": "entity.stage.12.3.lore",\
                                    \
                                    "loot": "12/12-3"\
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
