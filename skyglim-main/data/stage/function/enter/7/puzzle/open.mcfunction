#> stage:enter/7/puzzle/open
# 
# 
# 
# 

# tell
execute positioned 9844 10 -329 run tellraw @a[dx=57, dy=15, dz=50] {translate: 'stage.7.gimmick.lamp.open', color: '#e094d7'}

# sound
execute positioned 9844 10 -329 as @a[dx=57, dy=15, dz=50] at @s run playsound minecraft:block.fire.extinguish voice @s ~ ~ ~ 0.3 2

# open
fill 9880 13 -296 9878 11 -296 minecraft:air destroy
