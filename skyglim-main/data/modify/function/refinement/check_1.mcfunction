###* 
###* アイテムが置かれている状況
###* 

###* まず appraise を（存在するなら）取得して、-1 なら洗練不可
scoreboard players set _ Temp -255
execute if data block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data."appraise" store result score _ Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data."appraise"

execute if score _ Temp matches -1 run return run function modify:refinement/fail_notavailable

###* data を取得して洗練可能かどうかチェック
scoreboard players set _ Temp -255
execute if data block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data."refinement".ref store result score _ Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data."refinement".ref

###* -255 なら鑑定不可
execute if score _ Temp matches -255 run function modify:refinement/fail_cantref

###* それ以外ならOK
execute unless score _ Temp matches -255 run function modify:refinement/check_2



