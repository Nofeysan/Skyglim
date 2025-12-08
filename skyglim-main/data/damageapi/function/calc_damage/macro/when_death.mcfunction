#> damageapi:calc_damage/enemy/calc
# 
# HP が 0 になった時の処理
# 
# 

##* 経験値
# score に保存
execute store result score xp Temp run data get entity @s data.status.xp

# 乱数でちょっと変える (*0.90-1.10)
execute store result score randint Temp run random value 80..120
scoreboard players operation xp Temp *= randint Temp
scoreboard players operation xp Temp /= #100 num

# 攻撃者に経験値入れる
execute on attacker at @s run function damageapi:calc_damage/macro/add_xp

# 装備効果
execute on attacker if entity @s[type=minecraft:player] run function damageapi:calc_damage/enemy/armor/death
execute on attacker if entity @s[type=minecraft:armor_stand] as @p[scores={UseMagicCheck=1}] run function damageapi:calc_damage/enemy/armor/death

# 付近にプレイヤーがいたら Item Drop
execute at @s if entity @a[distance=..20] run function damageapi:calc_damage/enemy/itemdrop/root

# 死亡処理
kill @s

###! ここにモブ死亡時の処理を入れる / boss とかね
