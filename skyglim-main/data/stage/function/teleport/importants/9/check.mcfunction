#> stage:teleport/importants/9/check
# 
# 該当箇所の近くにいるか？
# 
# 

# already?
execute if score $already.open.s4 _ matches 1 run return fail

# pos check
    execute positioned 10017 60 -10 if entity @s[distance=..5] at @s run function stage:teleport/importants/9/act/1

    execute positioned 10017 60 -10 unless entity @s[distance=..5] at @s run function stage:teleport/importants/9/fail
