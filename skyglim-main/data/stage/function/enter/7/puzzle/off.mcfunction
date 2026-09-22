#> stage:enter/7/puzzle/off
# 
# 
# 
# 
# 

# tell
execute positioned 9844 10 -329 run tellraw @a[dx=57, dy=15, dz=50] {translate: 'stage.7.gimmick.lamp.off', color: '#d94262'}

# sound
execute positioned 9844 10 -329 as @a[dx=57, dy=15, dz=50] at @s run playsound minecraft:block.fire.extinguish voice @s ~ ~ ~ 0.3 2

# score
scoreboard players set $gimmick.lamp s7.gimmick 0

# button
setblock 9887 15 -312 minecraft:pale_oak_button[face=floor, facing=east]
setblock 9898 11 -301 minecraft:pale_oak_button[face=floor, facing=east]
setblock 9876 7 -299 minecraft:pale_oak_button[face=floor, facing=south]
setblock 9862 15 -295 minecraft:pale_oak_button[face=floor, facing=south]
setblock 9846 17 -282 minecraft:pale_oak_button[face=floor, facing=south]
