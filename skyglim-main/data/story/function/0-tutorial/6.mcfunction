#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.???"}, {translate: "story.tutorial.6", click_event: {action: "run_command", command: "trigger story.trigger set 20"}}]

# 自動進行
schedule function story:0-tutorial/7 80t

# playsound
execute at @n[type=minecraft:allay, tag=kalmia] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
