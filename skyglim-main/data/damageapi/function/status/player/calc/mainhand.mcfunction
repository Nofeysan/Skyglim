##? data get entity @s SelectedItem.components.minecraft:custom_data.status.<id> で取得
# 初期化
scoreboard players operation @s act_Health = @s equip_Health
scoreboard players operation @s act_Strength = @s equip_Strength
scoreboard players operation @s act_CritChance = @s equip_CritChance
scoreboard players operation @s act_CritDamage = @s equip_CritDamage
scoreboard players operation @s act_Defence = @s equip_Defence
scoreboard players operation @s act_Speed = @s equip_Speed
scoreboard players operation @s act_MagicPoint = @s equip_MagicPoint
scoreboard players operation @s act_Luck = @s equip_Luck
scoreboard players operation @s act_Damage = @s equip_Damage

##? data が存在したら計算する
execute if predicate damageapi:has_status_item run function damageapi:status/player/calc/mainhand-2

##? 倍率
function modify:enchantment/calc/root

