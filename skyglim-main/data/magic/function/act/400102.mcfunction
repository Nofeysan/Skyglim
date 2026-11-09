###* 
###*   id: 100002
###*   MP: 10
###*   name: ダメージ
###* 

###? 敵いるかチェック
execute unless entity @e[predicate=entity:entity_enemy,distance=..12] run return run function magic:check/fail-noenemy

###? MP 減らす
scoreboard players operation @s[tag=!failed] CurrentMP -= req_mp _

###? 実行部分
# 計算
function magic:check/calc_magic

# id 設定
data modify storage damageapi: magic_damage.id set value 400102

# armor_stand 召喚
function magic:macro/summon_armorstand with storage damageapi: magic_damage

# ダメージ実行
execute as @n[type=minecraft:armor_stand, tag=400102] at @s as @n[predicate=entity:entity_enemy] run tag @s add target
execute as @n[type=minecraft:armor_stand, tag=400102] at @s run damage @n[tag=target] 100 minecraft:magic by @s

# 演出
execute at @n[tag=target] run playsound minecraft:entity.dragon_fireball.explode voice @a ~ ~ ~ 0.7 2
execute at @n[tag=target] run playsound minecraft:entity.blaze.shoot voice @a ~ ~ ~ 0.7 1
execute at @n[tag=target] run particle minecraft:lava ~ ~ ~ 0.2 1 0.2 1 30
execute at @n[tag=target] run particle minecraft:dust{color: [0.745098039215686, 0.129411764705882, 0.32156862745098], scale: 1.2} ~ ~1 ~ 0.5 0.7 0.5 0 80
execute at @n[tag=target] run particle minecraft:dust{color: [0.917647058823529, 0.333333333333333, 0.0235294117647059], scale: 1.2} ~ ~1 ~ 0.5 0.7 0.5 0 80

# (攻撃)魔法使いました。
scoreboard players set @s UseMagicCheck 2 

# リセット
tag @e[tag=target] remove target
