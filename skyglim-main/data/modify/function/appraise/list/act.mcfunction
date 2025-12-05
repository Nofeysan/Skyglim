# repair_cost を取得してマクロで実行
execute store result storage modify: appraise.num int 1 run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:repair_cost"
function modify:appraise/list/macro/act with storage modify: appraise
