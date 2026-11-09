#> stage:teleport/importants/9/act/1
# 
# 演出作成する
# 
# 

# effects
execute positioned 10018 62 -12 run playsound minecraft:block.lava.extinguish voice @a ~ ~ ~ 0.3 1
execute positioned 10018 62 -12 run particle minecraft:dust{color: [0.850980392156863, 0.258823529411765, 0.384313725490196], scale: 3.2} ~ ~ ~ 2 2 2 0 480 force @a
execute positioned 10018 62 -12 run particle minecraft:dust{color: [0.984313725490196, 0.627450980392157, 0.247058823529412], scale: 3.2} ~ ~ ~ 2 2 2 0 480 force @a
execute positioned 10018 62 -12 run particle minecraft:dust{color: [0.745098039215686, 0.129411764705882, 0.32156862745098], scale: 3.2} ~ ~ ~ 2 2 2 0 480 force @a

# light
setblock 10018 62 -12 minecraft:light[level=15]

# next
schedule function stage:teleport/importants/9/act/4 20t
