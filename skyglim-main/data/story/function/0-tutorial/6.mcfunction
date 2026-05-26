#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.???"}, {translate: "story.tutorial.6", click_event: {action: "run_command", command: "function story:0-tutorial/6-2.1"}}]

# 自動進行
schedule function story:0-tutorial/7 60t

# playsound
execute at @n[type=minecraft:allay, tag=kalmia] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
