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
                "minecraft:enchantment_glint_override": true\
            }\
        }, Tags: ["gimmick", "gimmick.magma", "$(id)"], NoGravity: true, Glowing: true\
    }

team join bomb.1 @e[distance=..30, tag=gimmick.magma]

# 予測線 particle
scoreboard players set $count _ 10
function stage:boss/2/move/4/particle-line

# sound
playsound minecraft:entity.experience_orb.pickup voice @a ~ ~ ~ 0.5 2
