#> magic:act/300003
# 
# id: 300003
# MP: 50
# type: buff
# value: Haste I 30s
# 

###? MP 減らす
scoreboard players operation @s CurrentMP -= req_mp _

###? 実行部分
# effect
effect give @s minecraft:haste 30 0

# 演出
playsound minecraft:block.anvil.use voice @a ~ ~ ~ 0.7 2
playsound minecraft:entity.firework_rocket.blast voice @a ~ ~ ~ 0.7 1

particle minecraft:dust{color:[0.96078431372549, 0.870588235294118, 0.517647058823529], scale: 1.1} ~ ~1 ~ 0.7 1 0.7 0 120
