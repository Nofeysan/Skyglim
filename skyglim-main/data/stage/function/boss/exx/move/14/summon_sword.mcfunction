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
    Tags: ['gimmick', 'gimmick.sword.exx-2'], \
    Passengers: [\
        {\
            id: "minecraft:item_display", \
            item: {id: "minecraft:golden_sword", components: {"minecraft:enchantment_glint_override": true}}, \
            transformation: {\
                scale: [12.0f, 12.0f, 1.5f], \
                translation: [0.0f, 4.5f, 0.0f], \
                right_rotation: {axis: [-0.7071f, -0.7071f, 0.0f], angle: 1.17809}, \
                left_rotation: [0.0f, 0.0f, 0.0f, 1.0f]\
            }, \
            Glowing: true, Tags: ['gimmick']\
        }\
    ]\
}
