#> stage:boss/perform
# 
# boss 死亡時の処理 (as @s[tag=boss])
# ここから分岐します
# 

execute if entity @s[tag=s1] at @s run function stage:boss/1/death
