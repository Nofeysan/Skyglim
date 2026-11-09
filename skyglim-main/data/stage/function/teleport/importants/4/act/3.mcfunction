#> stage:teleport/importants/9/act/1
# 
# 移動
# 
# 

# moves
execute positioned 9866 108.5 -143 run data modify entity @n[type=item] Motion set value [0.0d, 0.02d, -0.03d]

# effects
execute positioned 9866 108.5 -143 run playsound minecraft:block.enchantment_table.use voice @a ~ ~ ~ 0.3 1
execute positioned 9866 109 -143 run particle minecraft:enchant ~ ~ ~ 0.4 0.4 0.4 0 160 force @a
execute positioned 9866 109 -143 run particle minecraft:dust{color: [0.737254901960784, 0.886274509803922, 0.909803921568628], scale: 0.8} ~ ~ ~ 0.4 0.4 0.4 0 160 force @a

# next
schedule function stage:teleport/importants/4/act/4 60t
