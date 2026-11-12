#> entity:effector/root
# 
# 値を増やしていって、特定の値になったらランダムで実行
# tag によって分ける
# 
# 必須；tag= ['effector', 'effector.']
# 

# count
    scoreboard players add @s EffectorCount 1

# 各行動
    # S7 中 ボス; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.s7.n] if score @s EffectorCount matches 100.. run function entity:effector/act/s7n

    # S7 中 ボス; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.s7] if score @s EffectorCount matches 100.. run function entity:effector/act/s7

    # S10 ボス中 眷属; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.s10] if score @s EffectorCount matches 160.. run function entity:effector/act/s10

    # S11-1; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.s11.1] if score @s EffectorCount matches 130.. run function entity:effector/act/s11.1

    # S12.2; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.s12.2] if score @s EffectorCount matches 120.. run function entity:effector/act/s12.2

    # S13.1; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.s13.1] if score @s EffectorCount matches 120.. run function entity:effector/act/s13.1

    # S14.1; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.s14.1] if score @s EffectorCount matches 140.. run function entity:effector/act/s14.1

    # S15.1; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.s15.1] if score @s EffectorCount matches 140.. run function entity:effector/act/s15.1

    # S15.1; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.s15.4] if score @s EffectorCount matches 140.. run function entity:effector/act/s15.4

    # ex1.1; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.ex1.1] if score @s EffectorCount matches 120.. run function entity:effector/act/ex1.1

    # ex5.2; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.ex5.2] if score @s EffectorCount matches 120.. run function entity:effector/act/ex5.2

    # ex6.2; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.ex6.2] if score @s EffectorCount matches 240.. run function entity:effector/act/ex6.2

    # ex7.2; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.ex7.2] if score @s EffectorCount matches 240.. run function entity:effector/act/ex7.2

    # ex7.7; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.ex7.7] if score @s EffectorCount matches 240.. run function entity:effector/act/ex7.7

    # ex7.11; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.ex7.11] if score @s EffectorCount matches 240.. run function entity:effector/act/ex7.11

    # ex8.1; プレイヤーの位置に AoE
        execute if entity @s[tag=effector.ex8.1] if score @s EffectorCount matches 200.. run function entity:effector/act/ex8.1
