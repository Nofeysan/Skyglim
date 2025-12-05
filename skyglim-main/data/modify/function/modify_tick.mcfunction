###* Refiement, Appraise, Enchantment はワールドに一つしかないのでプレイヤーがいる限り常に検知しましょう
#? Enchantment
execute as @e[type=minecraft:armor_stand, tag=enchantment] at @s positioned ~ ~-1 ~ if entity @a[distance=..7] run function modify:enchantment/set_contents/root

#? Appraise
#execute as @e[type=minecraft:armor_stand, tag=appraise] at @s if entity @a[distance=..7] run function modify:appraise/root

