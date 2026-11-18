#> stage:teleport/importants/16/act/2
# 
# 
# 
# 

# perform
execute positioned 9978 85 -267 run particle minecraft:dragon_breath ~ ~0.5 ~ 0 0 0 0.3 20 force
execute positioned 9978 85 -267 run playsound minecraft:block.ender_chest.close voice @a ~ ~ ~ 1 1.55

# next
schedule function stage:teleport/importants/16/act/5 20t
