#> magic:act/300003
# 
# id: 300004
# MP: 75
# type: buff
# value: 魔法攻撃力 x1.5
# 

###? MP 減らす
scoreboard players operation @s CurrentMP -= req_mp _

###? 実行部分
# effect
effect give @s minecraft:hero_of_the_village 60 100 true

# 演出
playsound minecraft:block.brewing_stand.brew voice @a ~ ~ ~ 0.7 1
playsound minecraft:item.trident.thunder voice @a ~ ~ ~ 0.7 1.8

particle minecraft:dust{color:[0.509803921568627, 0.313725490196078, 0.780392156862745], scale: 1.8} ~ ~1 ~ 0.7 1 0.7 0 120
