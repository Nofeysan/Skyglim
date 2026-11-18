#> stage:teleport/importants/9/check
# 
# 該当箇所の近くにいるか？
# 
# 

# already?
execute if score $houmotsuko.gate.key.use _ matches 1 run return fail

# pos check
    execute positioned 122 49 237 if entity @s[distance=..4] at @s run function stage:teleport/importants/houmotsuko/act/0

    execute positioned 122 49 237 unless entity @s[distance=..4] at @s run function stage:teleport/importants/12/fail
