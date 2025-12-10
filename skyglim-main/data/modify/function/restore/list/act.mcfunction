# repair_cost を取得してマクロで実行
execute store result storage modify: restore.num int 1 run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:repair_cost"
function modify:restore/list/macro/act with storage modify: restore
