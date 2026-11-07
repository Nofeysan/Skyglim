#> stage:teleport/importants/9/act/1
# 
# 演出作成する
# 
# 

# effects
execute positioned 10018 62 -12 run playsound minecraft:block.lava.extinguish voice @a ~ ~ ~ 0.3 0.5
execute positioned 10018 62 -12 run playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.3 1.0
execute positioned 10018 62 -12 run particle minecraft:dust{color: [0.850980392156863, 0.258823529411765, 0.384313725490196], scale: 4} ~ ~ ~ 4 4 4 0 1200 force @a
execute positioned 10018 62 -12 run particle minecraft:dust{color: [0.984313725490196, 0.627450980392157, 0.247058823529412], scale: 4} ~ ~ ~ 4 4 4 0 1200 force @a
execute positioned 10018 62 -12 run particle minecraft:dust{color: [0.745098039215686, 0.129411764705882, 0.32156862745098], scale: 4} ~ ~ ~ 4 4 4 0 1200 force @a

execute positioned 10018 62 -12 run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.7 0.8

# light
setblock 10018 62 -12 minecraft:air

# open
clone 10013 19 -23 10027 33 -5 10013 57 -23
