#> entity:effector/root
# 
# 値を増やしていって、特定の値になったらランダムで実行
# tag によって分ける
# 

# count
    scoreboard players add @s EffectorCount 1

# 各行動
    # S7 中 ボス; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.s7] if score @s EffectorCount matches 200.. run function entity:effector/act/s7

