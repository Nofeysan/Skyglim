#> stage:boss/10/half
# 
# 体力が半分になったとき
# 
# 

# bossbar
bossbar set minecraft:stage13.boss color red

# effect
execute as @a[distance=..80] at @s run playsound minecraft:entity.wither.spawn voice @s ~ ~ ~ 0.5 1.5
execute as @a[distance=..80] at @s run playsound minecraft:block.brewing_stand.brew voice @s ~ ~ ~ 0.5 0.5
particle minecraft:witch ~ ~ ~ 0.3 1.0 0.3 0.1 240 force @a
particle minecraft:end_rod ~ ~ ~ 0.3 1.0 0.3 0.3 240 force @a

# score
scoreboard players set $s13.boss.half _ 1
