#> item:currency/change/fail
# 
# 数が足りないとき
# 
# 

# tell
tellraw @s {translate: "exhange.fail", color: "#d94262"}

# sound
execute at @s run playsound minecraft:block.dispenser.dispense voice @s ~ ~ ~ 1 2
