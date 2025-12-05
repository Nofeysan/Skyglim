# 通貨チェック
execute unless score l Currency matches 12.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1001] 12

# アイテムあげるね～
loot give @s loot shop:.give/armor/tier1/chest
execute at @s run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 1 2

tellraw @s [{"text": "\uE010 ","color": "#44ddf4"},{"text": "駆け出しの服","color": "#eccbd9"},{"text": " を購入しました！"}]
