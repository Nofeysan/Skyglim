#> stage:boss/4/move/2/pre
# 
# 事前予告
# 
# 

# 各プレイヤーの場所に summon
execute at @a[distance=..30] run summon minecraft:item ~ ~1 ~ {Item: {id: "minecraft:yellow_stained_glass", components: {"minecraft:enchantment_glint_override": true, "minecraft:max_stack_size": 1}}, NoGravity: true, PickupDelay: -1, Tags: ["gimmick", "gimmick.beam"], Glowing: true}

# sound
execute as @a[distance=..30] at @s run playsound minecraft:block.anvil.use voice @s ~ ~ ~ 0.7 2
execute at @a[distance=..30] run particle minecraft:end_rod ~ ~ ~ 0.3 0.3 0.3 0.08 60
