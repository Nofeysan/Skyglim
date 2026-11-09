#> damageapi:analyze/right_click
# 
# 本右クリック後
# 
# 

#* repair_cost で取得
    execute store result score _ _ run data get entity @s SelectedItem.components."minecraft:repair_cost"

# 各分岐
    # analyze / {analyze: 1b} or 300000
        #execute if predicate damageapi:has_analyze at @s run function damageapi:analyze/act/root
        execute if score _ _ matches 300000 at @s run function damageapi:analyze/act/root

    # ender_eye / 300400
        execute if score _ _ matches 300400 at @s run function stage:teleport/importants/4/check

    # お菓子の国の門の鍵 / 300603
        execute if score _ _ matches 300603 at @s run function stage:teleport/importants/6/check

    # fire_stick / 300900
        execute if score _ _ matches 300900 at @s run function stage:teleport/importants/9/check

###* リセット
scoreboard players reset @s UseMagic
