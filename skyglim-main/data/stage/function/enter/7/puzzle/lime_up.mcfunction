#> stage:enter/7/puzzle/lime_down
# 
# 
# 
# 

fill 9881 11 -306 9880 11 -305 minecraft:air
fill 9893 9 -303 9893 9 -299 minecraft:air
fill 9859 14 -304 9865 11 -308 minecraft:air
fill 9858 14 -302 9852 11 -304 minecraft:air
fill 9855 13 -298 9853 11 -296 minecraft:air
fill 9851 13 -292 9849 11 -294 minecraft:air
fill 9855 11 -288 9853 11 -290 minecraft:air
fill 9877 9 -308 9875 6 -306 minecraft:air

# ランプ全消灯
function stage:enter/7/puzzle/off

# sound
execute positioned 9844 10 -329 as @a[dx=57, dy=15, dz=50] at @s run playsound minecraft:block.glass.break voice @s ~ ~ ~ 0.3 1
