#> stage:teleport/3-gate
# 
# 次の TP 開放
# 
# 

# block
setblock ~ ~2 ~ minecraft:air

# sound
execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.5 0.8
particle minecraft:dust{color: [0.87843137254902, 0.580392156862745, 0.843137254901961], scale: 0.9} 9906 102 -35 1.5 2 1.5 0.1 480

# fill
forceload add 9817 -36 9830 -36
fill 9817 116 -36 9830 102 -36 air replace minecraft:iron_bars
forceload remove 9817 -36 9830 -36

# tell
tellraw @a {translate: "gate.open", color: "#f5de84"}

# shop
execute unless score $boss_slain_3 story.progress matches 1 run function shop:token/open/3
scoreboard players set $boss_slain_3 story.progress 1
