###* 
###* <storage> status: player.uuid に実行者の uuid が入ってます
###* 
###> damageapi:player_tick

# スコアホルダーを作成
$scoreboard players set $(uuid) Level 1

# さらに storage に入れてホルダーを変更する
# [<level>] <記号> name (<rate>%)
execute store result storage status: player.level int 1 run scoreboard players get @s CurrentLv

loot replace block 0 0 0 container.0 loot entity:player_head
data modify storage status: player.name set from block 0 0 0 Items[{Slot:0b}].components.minecraft:profile.name

scoreboard players operation @s XpRate = @s CurrentXp
scoreboard players operation @s XpRate *= #10000 num
scoreboard players operation @s XpRate /= @s NextXp
scoreboard players operation int XpRate = @s XpRate
scoreboard players operation int XpRate /= #100 num
scoreboard players operation float XpRate = @s XpRate
scoreboard players operation float XpRate %= #100 num

execute store result storage status: player.int int 1 run scoreboard players get int XpRate
execute store result storage status: player.float int 1 run scoreboard players get float XpRate

# 実行
function entity:scoreboard/macro/modify_name with storage status: player


