#> stage:teleport/importants/9/check
# 
# 該当箇所の近くにいるか？
# 
# 

# already?
execute if score $s6.gate.key.use _ matches 1 run return fail

# pos check
    execute positioned 9988 127 -267 if entity @s[distance=..3] at @s run function stage:teleport/importants/6/act/init

    execute positioned 9988 127 -267 unless entity @s[distance=..3] at @s run function stage:teleport/importants/6/fail
