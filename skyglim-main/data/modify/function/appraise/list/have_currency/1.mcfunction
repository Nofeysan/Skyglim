# 通貨の所持数をチェック
execute store result score l Currency run clear @s *[repair_cost=1001] 0

# 足りなかったら失敗
execute unless score l Currency matches 32.. run function modify:appraise/fail_nocurrency

# 足りたら通貨減らす
execute if score l Currency matches 32.. run clear @s *[repair_cost=1001] 32

# スコアリセット
scoreboard players reset l Currency

