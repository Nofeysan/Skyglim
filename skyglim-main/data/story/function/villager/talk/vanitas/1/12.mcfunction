#> story:villager/talk/knight/1/1
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.vanitas"}, {translate: "story.vanitas.1-12"}]

# 自動進行
schedule function story:villager/talk/vanitas/1/13 100t

# playsound
execute at @n[type=minecraft:villager, tag=vanitas] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5

# score
scoreboard players set $has_talks_vanitas CanTalkWithMe 2
