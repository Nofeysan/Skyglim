#> story:villager/talk/knight/1/1
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.vanitas"}, {translate: "story.vanitas.1-14"}]

# 自動進行
schedule function story:villager/talk/vanitas/1/15 100t

# playsound
execute at @n[type=minecraft:villager, tag=vanitas] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5
