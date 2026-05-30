#> modify:enchantment/calc/spawner-adrenaline
# 
# 
# 
# 

# effect
effect give @s minecraft:haste 7 0

# particle, playsound
execute at @s run playsound minecraft:entity.dolphin.splash voice @a ~ ~ ~ 0.7 2
execute at @s run particle minecraft:note ~ ~ ~ 0.7 1.4 0.7 0 120 force @a
