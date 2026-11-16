#> stage:player/return/cant_use
# 
# 
# 
# 

# tell
tellraw @s {translate: "stage.return.not", color: "#be2152"}
execute at @s run playsound minecraft:block.dispenser.dispense voice @s ~ ~ ~ 0.8 2
