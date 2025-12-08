#> damageapi:analyze/act/fail
# 
# ブロックにぶつかる・誰もいなかった時
# 
# 

tellraw @s [{text: "\uE010 目線の先に対象がいません。",color: "#d94262"}]
execute at @s run playsound minecraft:block.dispenser.dispense voice @s ~ ~ ~ 1 2
