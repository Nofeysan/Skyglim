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

    # fire_stick / 301203
        execute if score _ _ matches 301203 at @s run function stage:teleport/importants/12/check

    # 舟形の秘密鍵 / 301301
        execute if score _ _ matches 301301 at @s run function stage:teleport/importants/13/check

    # 転移魔力源 / 301401
        execute if score _ _ matches 301401 at @s run function stage:teleport/importants/14/check

    # 終焉のコンパス / 301602
        execute if score _ _ matches 301602 at @s run function stage:teleport/importants/16/check

    # 宝物庫の鍵 / 301999
        execute if score _ _ matches 301999 at @s run function stage:teleport/importants/houmotsuko/check

    # ルートキー / 310003
        execute if score _ _ matches 310003 at @s run function stage:teleport/importants/sp-gate/root

###* リセット
scoreboard players reset @s UseMagic
