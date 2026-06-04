#> magic:act/300005
# id: 100005
# MP: 40
# name: 範囲ダメージ
# 

###? MP 減らす
scoreboard players operation @s[tag=!failed] CurrentMP -= req_mp _

###? 実行部分
# 計算
function magic:check/calc_magic

# id 設定
data modify storage damageapi: magic_damage.id set value 300005
execute store result storage damageapi: magic_damage.luck int 1 run scoreboard players get @s act_Luck


data modify storage damageapi: magic_damage.item set value "minecraft:magma_block"
data modify storage damageapi: magic_damage.Glowing set value true
data modify storage damageapi: magic_damage.NoGravity set value false

# item 召喚
execute positioned ~ ~1.3 ~ run function magic:macro/summon_item with storage damageapi: magic_damage

team join magic.color.red @n[type=minecraft:item, tag=300005]

# 飛ばす
execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags: ["getMotion"]}
execute store result entity @n[type=minecraft:item, tag=300005] Motion[0] double 0.0001 run data get entity @n[type=minecraft:area_effect_cloud, tag=getMotion] Pos[0] 10000
execute store result entity @n[type=minecraft:item, tag=300005] Motion[1] double 0.0001 run data get entity @n[type=minecraft:area_effect_cloud, tag=getMotion] Pos[1] 10000
execute store result entity @n[type=minecraft:item, tag=300005] Motion[2] double 0.0001 run data get entity @n[type=minecraft:area_effect_cloud, tag=getMotion] Pos[2] 10000
kill @n[type=minecraft:area_effect_cloud, tag=getMotion]

# 演出
execute at @s run playsound minecraft:entity.dragon_fireball.explode voice @a ~ ~ ~ 0.7 2
execute at @s run particle minecraft:lava ~ ~ ~ 0.2 1 0.2 1 10
execute at @s run particle minecraft:dust{color: [0.745098039215686, 0.129411764705882, 0.32156862745098], scale: 0.9} ~ ~ ~ 0.7 1.4 0.7 0 120

# (攻撃)魔法使いました。
scoreboard players set @s UseMagicCheck 20

# リセット
tag @e[tag=target] remove target
