##> damageapi:player_tick
##* 
##* as @s と同じ状況
##* 
##* 


#+ 俊足床
execute if block ~ ~-0.3 ~ minecraft:light_blue_concrete run effect give @s minecraft:speed 1 19
execute if block ~ ~-0.3 ~ minecraft:light_blue_concrete run advancement grant @s only stage:block/speed

#+ 跳躍床
execute if block ~ ~ ~ minecraft:lime_carpet run effect give @s minecraft:jump_boost 1 6
execute if block ~ ~-0.3 ~ minecraft:lime_carpet run advancement grant @s only stage:block/jump

#- 鈍足床
execute if block ~ ~-0.3 ~ minecraft:clay run effect give @s minecraft:slowness 1 4
execute if block ~ ~-0.3 ~ minecraft:clay run advancement grant @s only stage:block/slow

#- 怠惰床
execute if block ~ ~-0.3 ~ minecraft:mycelium run effect give @s minecraft:mining_fatigue 1 0
execute if block ~ ~-0.3 ~ minecraft:mycelium run effect give @s minecraft:hunger 1 55
execute if block ~ ~-0.3 ~ minecraft:mycelium run advancement grant @s only stage:block/lazy

#- 呪い床
execute if block ~ ~-0.3 ~ minecraft:mud run effect give @s minecraft:wither 10 0
execute if block ~ ~-0.3 ~ minecraft:mud run advancement grant @s only stage:block/wither

#! ダメージ床
#// バニラと同じくただのマグマブロックなので手間が省ける！やったね！

#! 準即死床
execute if block ~ ~-0.3 ~ minecraft:nether_wart_block run damage @s 0.01 minecraft:magic
execute if block ~ ~-0.3 ~ minecraft:nether_wart_block run advancement grant @s only stage:block/instant

#- 堕天床
execute if block ~ ~-0.75 ~ minecraft:dead_brain_coral_block run tag @s add cant_jump
execute unless block ~ ~-0.75 ~ minecraft:dead_brain_coral_block if entity @s[tag=cant_jump] run function stage:player/cant_jump/remove
execute if entity @s[tag=cant_jump] run function stage:player/cant_jump/act
execute if block ~ ~-0.3 ~ minecraft:dead_brain_coral_block run advancement grant @s only stage:block/not_jump

# 帰還用
execute if score @s ReturnPearl matches 0.. run function stage:player/return/every

# S3 専用水にいたら毒
execute positioned 9853 -28 -152 if entity @s[dx=43, dy=118, dz=38] run effect give @s minecraft:poison 1 1
