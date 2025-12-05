###* 
###*   id: 100001
###*   MP: 20
###*   name: ヒール
###* 

###? MP 減らす
scoreboard players operation @s CurrentMP -= req_mp MagicId

###? 実行部分
# 自分には +2000, 周りには +500
scoreboard players add @s CurrentHealth 1500
scoreboard players add @a[distance=..5.0] CurrentHealth 500

# 演出
playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.7 2
playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.7 1.4
playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.7 1

particle minecraft:happy_villager ~ ~ ~ 1 2 1 0.1 40
particle minecraft:dust{color:[0.57254901960784313725490196078431,0.95294117647058823529411764705882,0.64313725490196078431372549019608],scale:0.8} ~ ~0.2 ~ 2 0 2 0 500
