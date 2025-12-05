# まず召喚
$execute at @s rotated $(xy) $(z) positioned ^ ^ ^1 unless score DealtDamage Temp matches ..0 unless score c_did Temp matches 1 run loot spawn ~ ~1 ~ loot damageapi:damage_text
$execute at @s rotated $(xy) $(z) positioned ^ ^ ^1 unless score DealtDamage Temp matches ..0 if score c_did Temp matches 1 run loot spawn ~ ~1 ~ loot damageapi:damage_text_crit
