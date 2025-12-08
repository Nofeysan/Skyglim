

#* 乱数生成しときますね (1% > 0..99)
execute store result score random Temp run random value 0..9999

#! debug
#tellraw @s [{text: "\ue010 乱数(player) > "},{"score": {"name": "random","objective": "Temp"}}]


# ピンチはチャンス
execute if predicate modify:enchantment/armor.l/chance if score random Temp matches 0..499 run function damageapi:calc_damage/player/armor/l_chance

# 反撃
execute if predicate modify:enchantment/armor.l/attackback on attacker run effect give @s minecraft:slowness 2 0

# 耐久力
execute if predicate modify:enchantment/armor.f/unbreaking unless score @s UnbreakingCoolDown matches 1.. unless score @s Absorption matches 1.. run function damageapi:calc_damage/player/armor/unbreaking

# 命より重い
execute if predicate modify:enchantment/armor.f/xp if score random Temp matches 0..1999 run function damageapi:calc_damage/player/armor/xp
