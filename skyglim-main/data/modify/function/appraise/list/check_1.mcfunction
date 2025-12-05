###* 
###* アイテムが置かれている状況
###* 

###* data を取得して鑑定可能かどうかチェック
scoreboard players set _ Temp -255
execute if data block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data."appraise" store result score _ Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data."appraise"

###* -1 ならOK
execute if score _ Temp matches -1 run function modify:appraise/list/check_2

###* 2 なら鑑定済み
execute if score _ Temp matches 2 run function modify:appraise/fail_appraisedone

###* -255 なら鑑定不可
execute if score _ Temp matches -255 run function modify:appraise/fail_cantappraise

