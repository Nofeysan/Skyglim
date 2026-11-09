#> stage:teleport/importants/9/act/1
# 
# ポータル削除
# 
# 

# effects
fill 9866 107 -143 9866 107 -143 minecraft:air destroy
execute positioned 9866 107 -143 run particle minecraft:dust{color: [0.850980392156863, 0.258823529411765, 0.384313725490196], scale: 0.9} ~ ~0.5 ~ 0.4 0.4 0.4 0 70 force @a

# next
schedule function stage:teleport/importants/4/act/3 40t
