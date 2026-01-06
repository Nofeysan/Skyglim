##> damageapi:player_tick
##* 
##* アイテムを持ち替えたことを検知
##* ステータスを再読み込みする
##* 

# 初期化
scoreboard players operation @s act_Health = @s Health
scoreboard players operation @s act_Strength = @s Strength
scoreboard players operation @s act_CritChance = @s CritChance
scoreboard players operation @s act_CritDamage = @s CritDamage
scoreboard players operation @s act_Defence = @s Defence
scoreboard players operation @s act_Speed = @s Speed
scoreboard players operation @s act_MagicPoint = @s MagicPoint
scoreboard players operation @s act_Luck = @s Luck
scoreboard players set @s act_Damage 0

# data が存在したら計算する
execute if data entity @s equipment.head run function damageapi:status/player/calc/head
execute if data entity @s equipment.chest run function damageapi:status/player/calc/chest
execute if data entity @s equipment.legs run function damageapi:status/player/calc/legs
execute if data entity @s equipment.feet run function damageapi:status/player/calc/feet

execute if data entity @s Inventory[{Slot: 9b}].components."minecraft:custom_data".data.shard run function damageapi:status/player/calc/shard-1
execute if data entity @s Inventory[{Slot: 10b}].components."minecraft:custom_data".data.shard run function damageapi:status/player/calc/shard-2
execute if data entity @s Inventory[{Slot: 11b}].components."minecraft:custom_data".data.shard run function damageapi:status/player/calc/shard-3

execute if predicate damageapi:has_status_item run function damageapi:status/player/calc/mainhand-2

# enchantment - 倍率
function modify:enchantment/calc/root

#! debug
#-tellraw @s {text: "\uE010 Status Checked!"}
