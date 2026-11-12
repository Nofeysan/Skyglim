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
    SpawnCount: 4,\
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
                            id: "minecraft:wither_skeleton",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.235}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:chorus_flower", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:leather_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 9802598, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:iron_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 13940048, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:diamond_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 15185735, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:iron_axe", components: {"minecraft:enchantment_glint_override": true}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.10.1.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 25200,\
                                    "current_hp": 25200,\
                                    \
                                    "dmg": 41,\
                                    "str": 29,\
                                    "def": 24,\
                                    \
                                    "xp": 106,\
                                    \
                                    "lore": "entity.stage.10.1.lore",\
                                    \
                                    "loot": "10/10-1"\
                                }\
                            },\
                            active_effects: [\
                                {id: "minecraft:hero_of_the_village", duration: 2, amplifier: 1, show_icon: false, show_particles: false}\
                            ],\
                            Team: "enemy", Tags: ['leave.potion', 'leave.potion.s10.1']\
                        }\
                    ]\
                }\
            },\
            weight: 1\
        }\
    ], Tags: ["Spawner"], Invulnerable: true, NoGravity: true\
}
