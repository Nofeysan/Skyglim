#> stage:boss/2/move/4/item-*
# 
# item summon
# 
# 

# summon
$summon minecraft:item ^ ^ ^1 \
    {\
        PickupDelay: -1, \
        Item: {\
            id: "minecraft:magma_block", \
            components: {\
                "minecraft:enchantment_glint_override": true,\
                "minecraft:max_stack_size": 1\
            }\
        }, Tags: ["gimmick", "gimmick.magma", "$(id)"], NoGravity: true, Glowing: true, Age: 5950\
    }

team join bomb.3 @s[distance=..30, tag=gimmick.magma]

# 予測線 particle
scoreboard players set $count _ 32
function stage:boss/exx/move/11/particle-line
