##> damageapi:player_tick
##* 
##* as @s と同じ状況
##* 
##* 


#+ 俊足床
execute if block ~ ~-0.3 ~ minecraft:light_blue_concrete run effect give @s minecraft:speed 1 19

#+ 跳躍床
execute if block ~ ~ ~ minecraft:lime_carpet run effect give @s minecraft:jump_boost 1 6

#- 鈍足床
execute if block ~ ~-0.3 ~ minecraft:clay run effect give @s minecraft:slowness 1 4

#- 怠惰床
execute if block ~ ~-0.3 ~ minecraft:mycelium run effect give @s minecraft:mining_fatigue 1 0
execute if block ~ ~-0.3 ~ minecraft:mycelium run effect give @s minecraft:hunger 1 55

#- 呪い床
execute if block ~ ~-0.3 ~ minecraft:mud run effect give @s minecraft:wither 1 1

#! ダメージ床
#// バニラと同じくただのマグマブロックなので手間が省ける！やったね！

#! 準即死床
execute if block ~ ~-0.3 ~ minecraft:nether_wart_block run damage @s 0.01 minecraft:magic

#- 堕天床
execute if block ~ ~-0.75 ~ minecraft:dead_brain_coral_block run tag @s add cant_jump
execute unless block ~ ~-0.75 ~ minecraft:dead_brain_coral_block if entity @s[tag=cant_jump] run function stage:player/cant_jump/remove
execute if entity @s[tag=cant_jump] run function stage:player/cant_jump/act

# 帰還用
execute if score @s ReturnPearl matches 0.. run function stage:player/return/every
