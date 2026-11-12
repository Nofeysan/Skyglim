#> damageapi:calc_damage/enemy/potion/root
# 
# tag= ['leave.potion', 'leave.potion.']
# 
# 

# particle
    playsound minecraft:entity.firework_rocket.blast voice @a ~ ~ ~ 0.3 1
    particle minecraft:end_rod ~ ~2 ~ 0.2 0.2 0.2 0.1 20 force @a

# s10-1
    execute if entity @s[tag=leave.potion.s10.1] run summon minecraft:lingering_potion ~ ~1 ~ \
        {Item: {\
            id: "minecraft:pale_oak_planks", \
            components: {\
                "minecraft:enchantment_glint_override": true, \
                "minecraft:potion_contents": {\
                    custom_effects: [ \
                        {id: "minecraft:mining_fatigue", amplifier: 0, duration: 100},\
                        {id: "minecraft:blindness", amplifier: 0, duration: 60}\
                    ], \
                    custom_color: 4868789}\
            }\
        }, Motion: [0.0d, 0.45d, 0.0d], Glowing: true}

# s13-2
    execute if entity @s[tag=leave.potion.s13.2] run summon minecraft:lingering_potion ~ ~1 ~ \
        {Item: {\
            id: "minecraft:tnt", \
            components: {\
                "minecraft:enchantment_glint_override": true, \
                "minecraft:potion_contents": {\
                    custom_effects: [ \
                        {id: "minecraft:mining_fatigue", amplifier: 0, duration: 100},\
                        {id: "minecraft:blindness", amplifier: 0, duration: 60},\
                        {id: "minecraft:hunger", amplifier: 127, duration: 30}\
                    ], \
                    custom_color: 12961279}\
            }\
        }, Motion: [0.0d, 0.45d, 0.0d], Glowing: true}

# s15-2
    execute if entity @s[tag=leave.potion.s15.2] run summon minecraft:lingering_potion ~ ~1 ~ \
        {Item: {\
            id: "minecraft:redstone_ore", \
            components: {\
                "minecraft:enchantment_glint_override": true, \
                "minecraft:potion_contents": {\
                    custom_effects: [ \
                        {id: "minecraft:weakness", amplifier: 10, duration: 80},\
                        {id: "minecraft:hunger", amplifier: 255, duration: 40}\
                    ], \
                    custom_color: 8593935}\
            }\
        }, Motion: [0.0d, 0.45d, 0.0d], Glowing: true}

# ex4.1
    execute if entity @s[tag=leave.potion.ex4.1] run summon minecraft:lingering_potion ~ ~1 ~ \
        {Item: {\
            id: "minecraft:calcite", \
            components: {\
                "minecraft:enchantment_glint_override": true, \
                "minecraft:potion_contents": {\
                    custom_effects: [ \
                        {id: "minecraft:weakness", amplifier: 10, duration: 80},\
                        {id: "minecraft:hunger", amplifier: 255, duration: 40}\
                    ], \
                    custom_color: 12444123}\
            }\
        }, Motion: [0.0d, 0.45d, 0.0d], Glowing: true}

# ex5.1
    execute if entity @s[tag=leave.potion.ex5.1] run summon minecraft:lingering_potion ~ ~1 ~ \
        {Item: {\
            id: "minecraft:calcite", \
            components: {\
                "minecraft:enchantment_glint_override": true, \
                "minecraft:potion_contents": {\
                    custom_effects: [ \
                        {id: "minecraft:slowness", amplifier: 10, duration: 80},\
                        {id: "minecraft:hunger", amplifier: 255, duration: 40},\
                        {id: "minecraft:blindness", amplifier: 0, duration: 40}\
                    ], \
                    custom_color: 12444123}\
            }\
        }, Motion: [0.0d, 0.45d, 0.0d], Glowing: true}

# ex6.1
    execute if entity @s[tag=leave.potion.ex6.1] run summon minecraft:lingering_potion ~ ~1 ~ \
        {Item: {\
            id: "minecraft:sea_lantern", \
            components: {\
                "minecraft:enchantment_glint_override": true, \
                "minecraft:potion_contents": {\
                    custom_effects: [ \
                        {id: "minecraft:slowness", amplifier: 10, duration: 80},\
                        {id: "minecraft:hunger", amplifier: 255, duration: 40},\
                        {id: "minecraft:blindness", amplifier: 0, duration: 60}\
                    ], \
                    custom_color: 12444123}\
            }\
        }, Motion: [0.0d, 0.45d, 0.0d], Glowing: true}

# ex7-4
    execute if entity @s[tag=leave.potion.ex7.4] run summon minecraft:lingering_potion ~ ~1 ~ \
        {Item: {\
            id: "minecraft:sea_lantern", \
            components: {\
                "minecraft:enchantment_glint_override": true, \
                "minecraft:potion_contents": {\
                    custom_effects: [ \
                        {id: "minecraft:slowness", amplifier: 10, duration: 80},\
                        {id: "minecraft:hunger", amplifier: 255, duration: 40},\
                        {id: "minecraft:blindness", amplifier: 0, duration: 60}\
                    ], \
                    custom_color: 12444123}\
            }\
        }, Motion: [0.0d, 0.45d, 0.0d], Glowing: true}

# ex7-6
    execute if entity @s[tag=leave.potion.ex7.6] run summon minecraft:lingering_potion ~ ~1 ~ \
        {Item: {\
            id: "minecraft:sea_lantern", \
            components: {\
                "minecraft:enchantment_glint_override": true, \
                "minecraft:potion_contents": {\
                    custom_effects: [ \
                        {id: "minecraft:slowness", amplifier: 10, duration: 80},\
                        {id: "minecraft:hunger", amplifier: 255, duration: 40},\
                        {id: "minecraft:blindness", amplifier: 0, duration: 60}\
                    ], \
                    custom_color: 12444123}\
            }\
        }, Motion: [0.0d, 0.45d, 0.0d], Glowing: true}

# ex7-9
    execute if entity @s[tag=leave.potion.ex7.9] run summon minecraft:lingering_potion ~ ~1 ~ \
        {Item: {\
            id: "minecraft:sea_lantern", \
            components: {\
                "minecraft:enchantment_glint_override": true, \
                "minecraft:potion_contents": {\
                    custom_effects: [ \
                        {id: "minecraft:slowness", amplifier: 10, duration: 80},\
                        {id: "minecraft:hunger", amplifier: 255, duration: 40},\
                        {id: "minecraft:blindness", amplifier: 0, duration: 60}\
                    ], \
                    custom_color: 12444123}\
            }\
        }, Motion: [0.0d, 0.45d, 0.0d], Glowing: true}

