#> stage:teleport/2
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
clone 77 47 253 79 48 255 77 54 253
forceload remove 108 240 75 258

# tell
tellraw @a {translate: "tp.open", color: "#f5de84"}

# story
#schedule function story:avelian/9/-2 40t
scoreboard players set $magic_progress story.progress 7
scoreboard players set $stage_progress story.progress 7
