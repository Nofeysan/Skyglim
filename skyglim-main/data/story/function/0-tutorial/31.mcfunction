#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.31"}]

# 敵召喚
execute positioned 78 96 -220 run function entity:summon/tutorial
execute positioned 78 96 -220 as @n[type=minecraft:zombie] run rotate @s -180 0

# effect
execute positioned 78 96 -220 run playsound minecraft:block.enchantment_table.use voice @a ~ ~ ~ 1 2
execute positioned 78 96 -220 run particle minecraft:cloud ~ ~ ~ 0.3 1 0.3 0.08 120 force @a

# 自動進行
#schedule function story:0-tutorial/32 60t

# playsound
execute at @n[tag=aj.skyglim.kalmia.root] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
