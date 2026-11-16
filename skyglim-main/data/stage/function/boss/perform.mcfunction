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

execute if entity @s[tag=s9] at @s run function stage:boss/9/death

execute if entity @s[tag=s10] at @s run function stage:boss/10/death
execute if entity @s[tag=s11] at @s run function stage:boss/11/death
execute if entity @s[tag=s12] at @s run function stage:boss/12/death
execute if entity @s[tag=s13] at @s run function stage:boss/13/death
execute if entity @s[tag=s14] at @s run function stage:boss/14/death
execute if entity @s[tag=s15] at @s run function stage:boss/15/death
execute if entity @s[tag=s16] at @s run function stage:teleport/importants/16/act/init

execute if entity @s[tag=ex2] at @s run function stage:boss/ex2/death
execute if entity @s[tag=ex3] at @s run function stage:boss/ex3/death
execute if entity @s[tag=ex5] at @s run function stage:boss/ex5/death
