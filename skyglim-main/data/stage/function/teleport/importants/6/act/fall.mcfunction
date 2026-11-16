#> stage:teleport/importants/6/act/fall
# 
# 
# 
# 

# effect
playsound minecraft:entity.generic.explode voice @a 9988 128 -267 0.5 0.7
playsound minecraft:entity.generic.explode voice @a 9988 128 -267 0.5 1.2
playsound minecraft:entity.generic.explode voice @a 9988 128 -267 0.5 1.9
playsound minecraft:entity.lightning_bolt.thunder voice @a 9988 128 -267 0.5 1.9
playsound minecraft:item.shield.break voice @a 9988 128 -267 0.5 0.5

particle minecraft:explosion_emitter 9988 128 -267 2 2 2 0.1 5

# gamemode
gamemode adventure @a

# fill
fill 9985 125 -270 9991 125 -264 minecraft:air replace minecraft:oak_planks

fill 9991 126 -268 9985 126 -266 minecraft:air destroy
fill 9990 126 -265 9986 126 -265 minecraft:air destroy
fill 9989 126 -264 9987 126 -264 minecraft:air destroy
fill 9990 126 -269 9986 126 -269 minecraft:air destroy
fill 9989 126 -270 9987 126 -270 minecraft:air destroy

# score
scoreboard players reset $s6.gate.effect _

# kill
kill @n[type=minecraft:armor_stand, tag=s6.gate.base]
execute positioned 9988 128 -267 run kill @n[type=minecraft:item, tag=s6.gate.key]
