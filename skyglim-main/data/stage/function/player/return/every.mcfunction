#> stage:player/return/every
# 
# 毎ティック実行
# 
# 

# increment
scoreboard players add @s ReturnPearl 1

# effect
effect give @s minecraft:slowness 1 4 true
effect give @s minecraft:glowing 1 0 true

# sound
scoreboard players operation _ _ = @s ReturnPearl
scoreboard players operation _ _ %= #20 num
execute if score _ _ matches 1 at @s run playsound minecraft:block.note_block.hat voice @s ~ ~ ~ 1 1

# title
title @s title ""
execute if entity @s[scores={ReturnPearl=  1..10 }] run tellraw @s [{text: "[ "},{text: "■"},{text: "■■■■■■■■■■■■■"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 11..20 }] run tellraw @s [{text: "[ "},{text: "■■"},{text: "■■■■■■■■■■■■"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 21..30 }] run tellraw @s [{text: "[ "},{text: "■■■"},{text: "■■■■■■■■■■■"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 31..40 }] run tellraw @s [{text: "[ "},{text: "■■■■"},{text: "■■■■■■■■■■"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 41..50 }] run tellraw @s [{text: "[ "},{text: "■■■■■"},{text: "■■■■■■■■■"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 51..60 }] run tellraw @s [{text: "[ "},{text: "■■■■■■"},{text: "■■■■■■■■"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 61..70 }] run tellraw @s [{text: "[ "},{text: "■■■■■■■"},{text: "■■■■■■■"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 71..80 }] run tellraw @s [{text: "[ "},{text: "■■■■■■■■"},{text: "■■■■■■"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 81..90 }] run tellraw @s [{text: "[ "},{text: "■■■■■■■■■"},{text: "■■■■■"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl= 91..100}] run tellraw @s [{text: "[ "},{text: "■■■■■■■■■■"},{text: "■■■■"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl=101..110}] run tellraw @s [{text: "[ "},{text: "■■■■■■■■■■■"},{text: "■■■"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl=111..120}] run tellraw @s [{text: "[ "},{text: "■■■■■■■■■■■■"},{text: "■■"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl=121..130}] run tellraw @s [{text: "[ "},{text: "■■■■■■■■■■■■■"},{text: "■"},{text: " ]"}]
execute if entity @s[scores={ReturnPearl=131..140}] run tellraw @s [{text: "[ "},{text: "■■■■■■■■■■■■■■"},{text: ""},{text: " ]"}]
