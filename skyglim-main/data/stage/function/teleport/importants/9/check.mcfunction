#> stage:teleport/importants/9/check
# 
# 該当箇所の近くにいるか？
# 
# 

# pos check
    execute positioned 10017 60 -10 if entity @s[distance=..5] run function stage:teleport/importants/9/act/1

    execute positioned 10017 60 -10 unless entity @s[distance=..5] run function stage:teleport/importants/9/fail
