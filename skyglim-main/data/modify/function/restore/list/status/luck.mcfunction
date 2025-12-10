###*  
###* base Temp <value> が記載済み
###*

# 乱数を *100 で出力し、調整用の値に [+] +30 して 30~130 / [-] +60 して 60~160 にそろえる
execute store result score rate Temp run random value 0..100
scoreboard players operation times Temp = rate Temp 
execute if score base Temp matches 0.. run scoreboard players operation times Temp += #30 num
execute unless score base Temp matches 0.. run scoreboard players operation times Temp += #60 num

# 基礎値と掛け算
scoreboard players operation base Temp *= times Temp

# 負の値なら逆をとる
execute unless score base Temp matches 0.. run scoreboard players operation rate Temp -= #100 num
execute unless score base Temp matches 0.. run scoreboard players operation rate Temp *= #-1 num

# macro で lore 付与
execute store result storage modify: restore.rate int 1 run scoreboard players get rate Temp
execute store result storage modify: restore.value int 0.01 run scoreboard players get base Temp

function modify:restore/list/macro/status/luck with storage modify: restore

# 合計に追加
scoreboard players add rolls Temp 1
scoreboard players operation rolls_total Temp += rate Temp

# roll に乱数を保存する
execute store result block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.roll.luck int 1 run scoreboard players get rate Temp
