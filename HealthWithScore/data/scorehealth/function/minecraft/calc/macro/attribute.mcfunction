# $(rate)

# Absorption あったら付与
execute if score @s Absorption matches 1.. run attribute @s minecraft:max_absorption base set 4
execute if score @s Absorption matches 1.. run effect give @s minecraft:absorption 1 0 true
execute if score @s Absorption matches ..0 run attribute @s minecraft:max_absorption base set 0
execute if score @s Absorption matches ..0 run effect clear @s minecraft:absorption

# maxhealth
$attribute @s minecraft:max_health base set $(rate)




