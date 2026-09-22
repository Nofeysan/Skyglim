#> stage:enter/7/puzzle/blue_up
# 
# 
# 
# 

fill 9884 14 -303 9884 11 -299 minecraft:air
fill 9859 14 -309 9865 11 -310 minecraft:air
fill 9858 14 -307 9852 11 -305 minecraft:air
fill 9847 11 -296 9845 11 -298 minecraft:air
fill 9847 13 -292 9845 11 -294 minecraft:air
fill 9851 11 -288 9849 11 -290 minecraft:air
fill 9877 9 -305 9875 6 -303 minecraft:air

# ランプ全消灯
function stage:enter/7/puzzle/off

# sound
execute positioned 9844 10 -329 as @a[dx=57, dy=15, dz=50] at @s run playsound minecraft:block.glass.break voice @s ~ ~ ~ 0.3 1
