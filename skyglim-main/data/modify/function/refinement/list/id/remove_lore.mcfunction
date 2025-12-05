# まず一行減らす
data remove block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"[1]

# lore をもっかい取得
execute store result score lores Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"

# まだ 8 行以上ならもっかい減らす / 7行にする
execute if score lores Temp matches 8.. run function modify:refinement/list/id/remove_lore
