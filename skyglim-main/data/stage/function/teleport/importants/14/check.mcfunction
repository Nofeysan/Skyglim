#> stage:teleport/importants/9/check
# 
# 該当箇所の近くにいるか？
# 
# 

# already?
execute if score $s14.gate.key.use _ matches 1 run return fail

# pos check
    execute positioned 9024 79 36 if entity @s[distance=..4] at @s run function stage:teleport/importants/14/act/0

    execute positioned 9024 79 36 unless entity @s[distance=..4] at @s run function stage:teleport/importants/12/fail
