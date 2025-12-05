# 入ってるアイテムの個数を検知する
execute store result score _ Temp run data get block ~ ~3 ~ Items
execute store result storage crafting: temp.slot int 1 run data get block ~ ~3 ~ Items

# レシピの必要枠数に応じたやつを実行する
function crafting:macro/run with storage crafting: temp
