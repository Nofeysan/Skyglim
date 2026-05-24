#> damageapi:status/player/token/select/fail
# 
# token ないよ
# 
# 

# tell
tellraw @s [{translate: "token.fail.notoken", color: "#d94262"}]

# sound
execute at @s run playsound minecraft:block.dispenser.dispense voice @s ~ ~ ~ 0.5 2
