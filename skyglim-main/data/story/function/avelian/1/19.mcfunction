#> story:avelian/1/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.avelian"}, {translate: "story.avelian.1-19"}]

# 自動進行
schedule function story:avelian/1/20 140t

# give
loot give @a loot item:pickaxe
loot give @a loot stage:return_ball

# playsound
execute at @n[type=minecraft:villager, predicate=story:is_avelian] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
