#> modify:enchantment/calc/spawner-hitandaway
# 
# 
# 
# 

# effect
effect give @s minecraft:speed 7 0

# particle, playsound
execute at @s run playsound minecraft:item.trident.throw voice @a ~ ~ ~ 0.7 1.0
execute at @s run particle minecraft:sweep_attack ~ ~ ~ 0.7 1.4 0.7 0 40 force @a
