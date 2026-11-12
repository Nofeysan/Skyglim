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
                            id: "minecraft:endermite",\
                            attributes: [\
                                {id: "minecraft:armor", base: -1024},\
                                {id: "minecraft:max_health", base: 1024},\
                                {id: "minecraft:max_absorption", base: 1024},\
                                {id: "minecraft:knockback_resistance", base: 1024},\
                                \
                                {id:"minecraft:movement_speed", base: 0.24}\
                            ],\
                            Health: 1024,\
                            AbsorptionAmount: 1024,\
                            equipment: {\
                                head: {id: "minecraft:glass", components: {"minecraft:unbreakable": {}, "minecraft:enchantment_glint_override": true}},\
                                chest: {id: "minecraft:elytra", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 9802598, "minecraft:enchantment_glint_override": true}},\
                                legs: {id: "minecraft:leather_leggings", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 7384001, "minecraft:enchantment_glint_override": true}},\
                                feet: {id: "minecraft:netherite_boots", components: {"minecraft:unbreakable": {}, "minecraft:dyed_color": 15185735, "minecraft:enchantment_glint_override": true}},\
                                mainhand: {id: "minecraft:bow", components: {"minecraft:enchantment_glint_override": true}},\
                                offhand: {id: "minecraft:tipped_arrow", components: {"minecraft:enchantment_glint_override": true, "minecraft:potion_contents": {custom_effects: [{id: "minecraft:slowness", amplifier: 2, duration: 100}, {id: "minecraft:blindness", duration: 40}], custom_color: 6598081}}},\
                            },\
                            drop_chances: {\
                                head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f\
                            },\
                            CustomName: {translate: "entity.stage.11.4.name", color: "#ffffff", italic: false},\
                            data: {\
                                "status": {\
                                    "max_hp": 32900,\
                                    "current_hp": 32900,\
                                    \
                                    "dmg": 44,\
                                    "str": 29,\
                                    "def": 26,\
                                    \
                                    "xp": 120,\
                                    \
                                    "lore": "entity.stage.11.4.lore",\
                                    \
                                    "loot": "11/11-4"\
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
