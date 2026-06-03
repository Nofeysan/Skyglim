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
execute unless entity @s[tag=boss] on attacker at @s run function damageapi:calc_damage/macro/add_xp
execute if entity @s[tag=boss] on attacker at @s run function damageapi:calc_damage/macro/add_xp_boss

# XP の方の経験値
execute store result score _ _ run random value 0..99
execute if score _ _ matches 0..49 run xp add @a[distance=..15] 2 points
execute if score _ _ matches 50..74 run xp add @a[distance=..15] 3 points
execute if score _ _ matches 75..84 run xp add @a[distance=..15] 5 points
execute if score _ _ matches 85..92 run xp add @a[distance=..15] 7 points
execute if score _ _ matches 93..97 run xp add @a[distance=..15] 15 points
execute if score _ _ matches 98..99 run xp add @a[distance=..15] 25 points

# 装備効果
execute on attacker if entity @s[type=minecraft:player] run function damageapi:calc_damage/enemy/armor/death
execute on attacker if entity @s[type=minecraft:armor_stand] as @p[scores={UseMagicCheck=1..}] run function damageapi:calc_damage/enemy/armor/death
execute on attacker if entity @s[type=minecraft:armor_stand] unless entity @p[scores={UseMagicCheck=1..}] as @p run function damageapi:calc_damage/enemy/armor/death

# 付近にプレイヤーがいたら Item Drop
execute unless entity @s[tag=boss] at @s if entity @a[distance=..20] run function damageapi:calc_damage/enemy/itemdrop/root

###! ここにモブ死亡時の処理を入れる / boss とかね
execute if entity @s[tag=boss] run function stage:boss/perform

# 死亡処理
kill @s
