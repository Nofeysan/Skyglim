#> story:avelian/1/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.avelian"}, {translate: "story.avelian.1-16"}]

# 自動進行
schedule function story:avelian/1/17 80t

# give
loot give @a loot item:pickaxe
loot give @a loot stage:return_ball

# playsound
execute at @n[tag=aj.skyglim.avelian.root] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
