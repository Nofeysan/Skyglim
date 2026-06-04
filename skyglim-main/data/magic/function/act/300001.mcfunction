#> magic:act/300001
# 
# id: 300001
# MP: 20
# type: ヒール
# value: 自身のHP +2500(1500+1000), 他プレイヤーのHP +1000
# 

###? MP 減らす
scoreboard players operation @s CurrentMP -= req_mp _

###? 実行部分
# 自分には +2000, 周りには +1000
scoreboard players add @s CurrentHealth 1500
scoreboard players add @a[distance=..5.0] CurrentHealth 1000

# 魔術師なら追加で +500
execute if score @s occupation matches 4 run scoreboard players add @a[distance=..5.0] CurrentHealth 500


# 演出
playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.7 2
playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.7 1.4
playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.7 1

particle minecraft:happy_villager ~ ~ ~ 1 2 1 0.1 40
particle minecraft:dust{color:[0.57254901960784313725490196078431,0.95294117647058823529411764705882,0.64313725490196078431372549019608], scale: 1.1} ~ ~0.2 ~ 2 0 2 0 500
