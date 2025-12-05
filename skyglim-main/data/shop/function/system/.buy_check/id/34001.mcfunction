# 通貨チェック
execute unless score lb Currency matches 1.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1002] 1

# アイテムあげるね～
loot give @s loot shop:.give/arrow/slow
execute at @s run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 1 2

tellraw @s [{"text": "\uE010 ","color": "#44ddf4"},{"text": "鈍足の矢","color": "#eccbd9"},{"text": " を購入しました！"}]
