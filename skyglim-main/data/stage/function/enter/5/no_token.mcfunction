#> stage:enter/5/no_token
# 
# スパムしないでねの念を送る
# 
# 

# playsound
execute at @s run playsound minecraft:block.dispenser.dispense voice @s ~ ~ ~ 1 2

# tell
tellraw @s {translate: "stage.5.token.notoken", color: "#d94262"}
