#> stage:enter/7/puzzle/white_down
# 
# white lever を下げた時（開く）
# 
# 

fill 9881 12 -308 9880 11 -307 minecraft:air
fill 9886 9 -303 9890 9 -299 minecraft:air
fill 9865 14 -302 9859 11 -303 minecraft:air
fill 9858 14 -308 9852 11 -310 minecraft:air
fill 9851 12 -296 9849 11 -298 minecraft:air
fill 9855 12 -292 9853 11 -294 minecraft:air
fill 9847 14 -288 9845 11 -290 minecraft:air
fill 9877 9 -311 9875 6 -309 minecraft:air

# ランプ全消灯
function stage:enter/7/puzzle/off

# sound
execute positioned 9844 10 -329 as @a[dx=57, dy=15, dz=50] at @s run playsound minecraft:block.glass.break voice @s ~ ~ ~ 0.3 1
