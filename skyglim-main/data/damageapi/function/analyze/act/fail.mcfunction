#> damageapi:analyze/act/fail
# 
# ブロックにぶつかる・誰もいなかった時
# 
# 

tellraw @s [{translate: "item.analyze.fail", color: "#d94262"}]
execute at @s run playsound minecraft:block.dispenser.dispense voice @s ~ ~ ~ 1 2
