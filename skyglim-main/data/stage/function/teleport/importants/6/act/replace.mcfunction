#> stage:teleport/importants/6/act/replace
# 
# @input
#   x, y, z: pos
#   p: pitch

$particle minecraft:dust{color: [0.745098039215686, 0.129411764705882, 0.32156862745098], scale: 1.6} $(x) $(y).5 $(z) 0.2 0.5 0.5 0.1 120
$setblock $(x) $(y) $(z) minecraft:red_concrete
$playsound minecraft:block.anvil.use voice @a $(x) $(y) $(z) 0.4 $(p)
