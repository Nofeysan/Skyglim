#> stage:teleport/importants/9/act/1
# 
# アイテム削除・ブレイク
# 
# 

# clear
#clear @s *[repair_cost=301999]

# particle
tellraw @a {translate: 'stage.houmotsuko.open', color: '#92f3a4'}

# score
scoreboard players set $houmotsuko.gate.key.use _ 1

# destroy
setblock 122 47 238 minecraft:redstone_torch
