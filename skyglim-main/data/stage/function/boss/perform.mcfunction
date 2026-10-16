#> stage:boss/perform
# 
# boss 死亡時の処理 (as @s[tag=boss])
# ここから分岐します
# 

execute if entity @s[tag=s1] at @s run function stage:boss/1/death
execute if entity @s[tag=s2] at @s run function stage:boss/2/death
execute if entity @s[tag=s4] at @s run function stage:boss/4/death
execute if entity @s[tag=s6] at @s run function stage:boss/6/death
execute if entity @s[tag=s7] at @s run function stage:boss/7/death
