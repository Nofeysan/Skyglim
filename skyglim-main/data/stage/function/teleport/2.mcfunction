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
forceload add 102 248 104 250
clone 102 47 248 104 48 250 102 54 248
forceload remove 102 248 104 250

# tell
tellraw @a {translate: "tp.open", color: "#f5de84"}

# story
scoreboard players set _ CanTalkWithMe 1
scoreboard players set $avelian_talks story.progress 3

scoreboard players set $magic_progress story.progress 2
