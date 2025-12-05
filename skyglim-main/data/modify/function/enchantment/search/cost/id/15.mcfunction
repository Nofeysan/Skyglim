###* Lv. チェック
# 必要な経験値を書く
scoreboard players set e.req Temp 15

# 今の経験値レベルを取得
execute store result score e.lv Temp run experience query @s levels

# 足りないなら終わり
execute if score e.lv Temp < e.req Temp run return run function modify:enchantment/search/cost/fail

# それ以上ならその分減らす
execute store result storage modify: enc.lv int 1 run scoreboard players get e.req Temp
function modify:enchantment/macro/lv with storage modify: enc

