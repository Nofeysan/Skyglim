# 通貨チェック
execute unless score lb Currency matches 4.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1002] 4

# アイテムあげるね～
loot give @s loot shop:.give/potion/maiotome
execute at @s run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 1 2

tellraw @s [{text: "\uE010 ",color: "#44ddf4"},{text: "\"舞\"乙女",color: "#eccbd9"},{text: " を購入しました！"}]
