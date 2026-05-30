#> entity:spawner/stage/3/1
# 
# {"xyz": "~ ~ ~"} で場所を指定する
# equipment: head, chest, legs, feet, mainhand, offhand, saddle, (body)
# 

setblock ~ ~ ~ minecraft:spawner\
{\
    id: "minecraft:mob_spawner",\
    Delay: 0,\
    \
    MinSpawnDelay: 300,\
    MaxSpawnDelay: 500,\
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
                            id: "minecraft:zombie",\
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
                                head: {id: "minecraft:warped_nylium", components: {"minecraft:unbreakable": {}}},\
                                chest: {id: "minecraft:leather_chestplate", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 3098038, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:leather_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 3103414, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:leather_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 3109814, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:warped_fungus_on_a_stick", components: {"minecraft:enchantment_glint_override": true, "minecraft:enchantments": {"entity:slow": 1}}}\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.3.1.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 10000,\
                                    "current_hp": 10000,\
                                    \
                                    "dmg": 17,\
                                    "str": 30,\
                                    "def": 7,\
                                    \
                                    "xp": 17,\
                                    \
                                    "lore": "entity.stage.3.1.lore",\
                                    \
                                    "loot": "3/3-1"\
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
    ]\
}
