#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.35"}]

# 敵召喚
execute positioned 100 61 -258 run function entity:summon/tutorial-2
execute positioned 100 61 -258 as @n[type=minecraft:zombie] run rotate @s -180 0

# effect
execute positioned 100 61 -258 run playsound minecraft:block.enchantment_table.use voice @a ~ ~ ~ 1 2
execute positioned 100 61 -258 run particle minecraft:cloud ~ ~ ~ 0.3 1 0.3 0.08 120 force @a

# press
setblock 102 62 -258 minecraft:light_weighted_pressure_plate
setblock 98 62 -258 minecraft:heavy_weighted_pressure_plate

# 自動進行
#schedule function story:0-tutorial/36 60t
