#> stage:teleport/importants/9/act/1
# 
# 演出作成する
# 
# 

# effects
execute positioned 10018 62 -12 run playsound minecraft:block.lava.extinguish voice @a ~ ~ ~ 0.3 1
execute positioned 10018 62 -12 run particle minecraft:dust{color: [0.850980392156863, 0.258823529411765, 0.384313725490196], scale: 2} ~ ~ ~ 1 1 1 0 300 force @a
execute positioned 10018 62 -12 run particle minecraft:dust{color: [0.984313725490196, 0.627450980392157, 0.247058823529412], scale: 2} ~ ~ ~ 1 1 1 0 300 force @a

# light
setblock 10018 62 -12 minecraft:light[level=12]

# next
schedule function stage:teleport/importants/9/act/3 20t
