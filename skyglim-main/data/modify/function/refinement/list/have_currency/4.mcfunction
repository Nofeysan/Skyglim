# 通貨の所持数をチェック
execute store result score el Currency run clear @s *[repair_cost=1003] 0

# 足りなかったら失敗
execute unless score el Currency matches 4.. run function modify:appraise/fail_nocurrency

# 足りたら通貨減らす
execute if score el Currency matches 4.. run clear @s *[repair_cost=1003] 4

# スコアリセット
scoreboard players reset el Currency

