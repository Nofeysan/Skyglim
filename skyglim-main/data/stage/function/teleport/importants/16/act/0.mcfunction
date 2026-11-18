#> stage:teleport/importants/16/act/0
# 
# 
# 
# 

# clear
clear @s *[repair_cost=301602]

# score
scoreboard players set $s16.gate.key.use _ 1

# next
schedule function stage:teleport/importants/16/act/1 20t
