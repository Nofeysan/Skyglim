#> stage:boss/11/move/2/summon_sword
# 
# 
# 
# 

# particle
particle minecraft:end_rod ~ ~ ~ 0.3 0.3 0.3 0.1 200

# sword on item
summon minecraft:item ~ ~ ~ \
{\
    Item: {\
        id: "minecraft:gold_block", \
        components: {\
            "minecraft:enchantment_glint_override": true\
        }\
    }, \
    NoGravity: true, \
    Invulnerable: true, \
    PickupDelay: -1, \
    Tags: ['gimmick', 'gimmick.sword.s11'], \
    Passengers: [\
        {\
            id: "minecraft:item_display", \
            item: {id: "minecraft:diamond_sword"}, \
            transformation: {\
                scale: [12.0f, 12.0f, 1.5f], \
                translation: [0.0f, 4.5f, 0.0f], \
                right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
                left_rotation: [0.0f, 0.0f, 0.0f, 1.0f]\
            }, \
            Glowing: true, Tags: ['gimmick']\
        }\
    ]\
}
