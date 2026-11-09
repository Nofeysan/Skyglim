#> magic:act/300001
# 
# id: 300001
# MP: 20
# type: ヒール 2
# value: 自身のHP +4000(2500+1500), 他プレイヤーのHP +1500 / 魔術師なら +4750, +2250
# 

###? MP 減らす
scoreboard players operation @s CurrentMP -= req_mp _

###? 実行部分
# 自分には +2000, 周りには +1000
scoreboard players add @s CurrentHealth 2500
scoreboard players add @a[distance=..5.0] CurrentHealth 1500

# 魔術師なら追加で +750
execute if score @s occupation matches 4 run scoreboard players add @a[distance=..5.0] CurrentHealth 750


# 演出
playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.7 2
playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.7 1.4
playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.7 1

particle minecraft:note ~ ~ ~ 0.8 1 0.8 0 60
particle minecraft:wax_off ~ ~ ~ 1 2 1 0.1 200
particle minecraft:dust{color:[0.57254901960784313725490196078431,0.95294117647058823529411764705882,0.64313725490196078431372549019608], scale: 1.1} ~ ~0.2 ~ 2 0 2 0 500
