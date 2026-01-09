#> damageapi:calc_damage/enemy/itemdrop/root
# 
# 付近にプレイヤーがいる → loot
# 
# 

# player の luck 値を参照 + 100
execute on attacker if entity @s[type=minecraft:player] run scoreboard players operation luck Temp = @s act_Luck
execute on attacker if entity @s[type=minecraft:armor_stand] as @p[scores={UseMagicCheck=1}] run scoreboard players operation luck Temp = @s act_Luck
scoreboard players add luck Temp 100

# path を storage に収納する
data modify storage damageapi: loot.path set from entity @s data.status.loot

# loot する
function damageapi:calc_damage/enemy/itemdrop/macro_root with storage damageapi: loot
