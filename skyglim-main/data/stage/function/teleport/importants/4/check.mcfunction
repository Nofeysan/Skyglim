#> stage:teleport/importants/9/check
# 
# 該当箇所の近くにいるか？
# 
# 

# already?
execute if score $already.open.s4 _ matches 1 run return fail

# pos check
    execute positioned 9866 107 -143 if entity @s[distance=..3] at @s run function stage:teleport/importants/4/act/0

    execute positioned 9866 107 -143 unless entity @s[distance=..3] at @s run function stage:teleport/importants/4/fail
