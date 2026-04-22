###* 
###*   id: 100002
###*   MP: 10
###*   name: ダメージ
###* 

###? MP 減らす
scoreboard players operation @s[tag=!failed] CurrentMP -= req_mp _

###? 実行部分
# ダメージ関連
scoreboard players set scale MagicTemp 100

# 計算
function magic:check/calc_magic

# ダメージ用アマスタ召喚
data modify storage damageapi: magic_damage.id set value 100002
function magic:macro/summon_armorstand with storage damageapi: magic_damage

# データ格納
data modify storage damageapi: magic_damage.uuid set from entity @n[type=minecraft:armor_stand,tag=100002] UUID[0]
function magic:macro/set_status with storage damageapi: magic_damage

# ダメージ実行
execute as @n[type=minecraft:armor_stand,tag=100002] at @s as @n[predicate=entity:entity_enemy] run tag @s add target
execute as @n[type=minecraft:armor_stand,tag=100002] at @s run damage @n[tag=target] 100 minecraft:magic by @s

# 演出
execute at @n[tag=target] run playsound minecraft:entity.dragon_fireball.explode voice @a ~ ~ ~ 0.7 2
execute at @n[tag=target] run particle minecraft:lava ~ ~ ~ 0.2 1 0.2 1 30

# (攻撃)魔法使いました。
scoreboard players set @s UseMagicCheck 2 

# リセット
tag @e[tag=target] remove target
