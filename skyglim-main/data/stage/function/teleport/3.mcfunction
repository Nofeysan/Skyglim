#> stage:teleport/3
# 
# 次の TP 開放
# 
# 

# block
fill ~ ~ ~ ~ ~2 ~ minecraft:air
setblock ~ ~ ~ minecraft:white_stained_glass

# sound
execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.5 0.8
particle minecraft:dust{color: [0.572549019607843, 0.474509803921569, 0.827450980392157], scale: 0.9} 9906 102 -35 1.5 2 1.5 0.1 480

# fill
forceload add 100 253 102 255
clone 100 47 253 102 48 255 100 54 253
forceload remove 100 253 102 255

# tell
tellraw @a {translate: "tp.open", color: "#f5de84"}

# story
scoreboard players set _ CanTalkWithMe 1
scoreboard players set $avelian_talks story.progress 3
