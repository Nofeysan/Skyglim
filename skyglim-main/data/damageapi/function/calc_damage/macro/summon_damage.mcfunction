#> damageapi:calc_damage/macro/summon_damage
# 
# ダメージ表記を summon
# 
# 

# まず召喚
# ノーマルモブ
$execute unless predicate entity:entity_small_enemy at @s rotated $(xy) $(z) positioned ^ ^ ^1 unless score DealtDamage Temp matches ..0 unless score c_did Temp matches 1 run loot spawn ~ ~1 ~ loot damageapi:damage_text
$execute unless predicate entity:entity_small_enemy at @s rotated $(xy) $(z) positioned ^ ^ ^1 unless score DealtDamage Temp matches ..0 if score c_did Temp matches 1 run loot spawn ~ ~1 ~ loot damageapi:damage_text_crit

# ちっちゃい場合は下げて表示
$execute if predicate entity:entity_small_enemy at @s rotated $(xy) $(z) positioned ^ ^ ^1 unless score DealtDamage Temp matches ..0 unless score c_did Temp matches 1 run loot spawn ~ ~0.2 ~ loot damageapi:damage_text
$execute if predicate entity:entity_small_enemy at @s rotated $(xy) $(z) positioned ^ ^ ^1 unless score DealtDamage Temp matches ..0 if score c_did Temp matches 1 run loot spawn ~ ~0.2 ~ loot damageapi:damage_text_crit
