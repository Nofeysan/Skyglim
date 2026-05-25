#> stage:player/return/fail
# 
# ダメージを受けたときの処理
# 
# 

# score reset
scoreboard players set @s ReturnPearl -1

# tell
title @s subtitle [{translate: "stage.return.cancelled", color: "#d94262"}]
tellraw @s {translate: "stage.return.fail", color: "#d94262"}

# sound
execute at @s run playsound minecraft:block.fire.extinguish voice @s ~ ~ ~ 0.7 1
