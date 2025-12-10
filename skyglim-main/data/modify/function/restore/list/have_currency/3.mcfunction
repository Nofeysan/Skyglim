# 通貨の所持数をチェック
execute store result score lb Currency run clear @s *[repair_cost=1002] 0

# 足りなかったら失敗
execute unless score lb Currency matches 16.. run function modify:restore/fail_nocurrency

# 足りたら通貨減らす
execute if score lb Currency matches 16.. run clear @s *[repair_cost=1002] 16

# スコアリセット
scoreboard players reset lb Currency
