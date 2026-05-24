#> story:0-tutorial/occupation/click/fail
# 
# すでに職に就いている場合
# 
# 

# tell
tellraw @s {translate: "tutorial.occupation.fail", color: "#d94262"}

# playsound
execute at @s run playsound minecraft:block.dispenser.dispense voice @s ~ ~ ~ 0.5 2
