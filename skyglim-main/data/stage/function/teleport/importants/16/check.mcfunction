#> stage:teleport/importants/9/check
# 
# 該当箇所の近くにいるか？
# 
# 

# already?
execute if score $s16.gate.key.use _ matches 1 run return fail

# pos check
    execute positioned 9977 85 -267 if entity @s[distance=..4] at @s run function stage:teleport/importants/16/act/0

    execute positioned 9977 85 -267 unless entity @s[distance=..4] at @s run function stage:teleport/importants/12/fail
