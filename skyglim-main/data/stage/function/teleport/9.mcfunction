#> stage:teleport/8
# 
# 次の TP 開放
# 
# 

# block
fill ~ ~ ~ ~ ~2 ~ minecraft:air
setblock ~ ~ ~ minecraft:white_stained_glass

# sound
execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.5 0.8
particle minecraft:dust{color: [0.87843137254902, 0.580392156862745, 0.843137254901961], scale: 0.9} 9906 102 -35 1.5 2 1.5 0.1 480

# fill
forceload add 108 240 75 258
clone 75 47 243 77 47 245 75 54 243
forceload remove 108 240 75 258

# tell
tellraw @a {translate: "tp.open", color: "#f5de84"}

# story
schedule function story:avelian/11/-2 40t
scoreboard players set $magic_progress story.progress 9
scoreboard players set $stage_progress story.progress 9
