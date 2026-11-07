#> stage:teleport/importants/9/act/1
# 
# 壊す
# 
# 

# root
fill 9865 111 -145 9867 111 -145 minecraft:air destroy
fill 9864 110 -145 9868 108 -145 minecraft:air destroy
fill 9865 107 -145 9867 107 -145 minecraft:air destroy

# effects
execute positioned 9866 109 -145 run playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.3 1.0
execute positioned 9866 109 -145 run particle minecraft:dust{color: [0.572549019607843, 0.952941176470588, 0.643137254901961], scale: 3.2} ~ ~ ~ 1.2 1.2 0 0 200 force @a
execute positioned 9866 109 -145 run particle minecraft:cloud ~ ~ ~ 1.2 1.2 0 0.3 300

execute positioned 9866 109 -145 run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.7 0.8
execute positioned 9866 109 -145 run kill @n[type=minecraft:item, tag=s4.gate.open]
