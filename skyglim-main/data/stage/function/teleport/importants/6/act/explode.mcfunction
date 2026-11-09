#> stage:teleport/importants/6/act/replace
# 
# @input
#   x, y, z: pos
#   p: pitch

$particle minecraft:explosion $(x) $(y).5 $(z) 0.3 0.3 0.3 0.1 3
$playsound minecraft:entity.generic.explode voice @a $(x) $(y) $(z) 0.55 $(p)
