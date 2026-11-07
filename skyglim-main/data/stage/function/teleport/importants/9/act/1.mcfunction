#> stage:teleport/importants/9/act/1
# 
# 演出作成する
# 
# 

# clear
clear @s *[repair_cost=300900]

# effects
execute positioned 10018 62 -12 run playsound minecraft:block.lava.extinguish voice @a ~ ~ ~ 0.3 2
execute positioned 10018 62 -12 run particle minecraft:dust{color: [0.850980392156863, 0.258823529411765, 0.384313725490196], scale: 1.2} ~ ~ ~ 0.2 0.2 0.2 0 80 force @a

# light
setblock 10018 62 -12 minecraft:light[level=8]

# next
schedule function stage:teleport/importants/9/act/2 20t
