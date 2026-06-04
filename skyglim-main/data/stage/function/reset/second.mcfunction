#> stage:reset/second
# 
# 入場中のステージにおいて、プレイヤーがいなければリセットを行う
# 
# 

# check
execute if score _ stage.1 matches 1.. positioned 9849 4 -8 unless entity @a[dx=102, dy=52, dz=139] run function stage:reset/stage/1
execute if score _ stage.2 matches 1.. positioned 9862 -64 -100 unless entity @a[dx=32, dy=98, dz=32] run function stage:reset/stage/2
execute if score _ stage.3 matches 1.. positioned 9378 20 -121 unless entity @a[dx=370, dy=40, dz=390] run function stage:reset/stage/3
execute if score _ stage.4 matches 1.. positioned 9853 -28 -152 unless entity @a[dx=43, dy=118, dz=38] run function stage:reset/stage/4

# S3 専用水にいたら毒
execute as @a at @s positioned 9378 20 -121 if entity @s[dx=370, dy=40, dz=390] at @s if block ~ ~ ~ minecraft:water run effect give @s minecraft:poison 1 1

clear @a minecraft:stick[minecraft:repair_cost=1]
