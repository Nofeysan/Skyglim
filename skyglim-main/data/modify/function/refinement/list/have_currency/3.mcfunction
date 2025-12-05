# 通貨の所持数をチェック
execute store result score lb Currency run clear @s *[repair_cost=1002] 0

# 足りなかったら失敗
execute unless score lb Currency matches 8.. run function modify:appraise/fail_nocurrency

# 足りたら通貨減らす
execute if score lb Currency matches 8.. run clear @s *[repair_cost=1002] 8

# スコアリセット
scoreboard players reset lb Currency

