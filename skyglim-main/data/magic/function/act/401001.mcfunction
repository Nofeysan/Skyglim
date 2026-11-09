#> magic:act/401001
# id: 401001
# MP: 50
# name: アイテム収集
# 

###? MP 減らす
scoreboard players operation @s[tag=!failed] CurrentMP -= req_mp _

###? 実行部分

# 演出
playsound minecraft:entity.wither.shoot voice @a ~ ~ ~ 0.7 1
playsound minecraft:entity.item.pickup voice @a ~ ~ ~ 0.7 1.8

execute at @e[type=minecraft:item, tag=!gimmick, distance=..7] run particle minecraft:end_rod ~ ~0.5 ~ 0 5 0 0 20

particle minecraft:dust{color:[0.364705882352941, 0.8, 0.670588235294118], scale: 1.8} ~ ~1 ~ 0.7 1 0.7 0 120

# effect
tp @e[type=minecraft:item, tag=!gimmick, distance=..7] @s
