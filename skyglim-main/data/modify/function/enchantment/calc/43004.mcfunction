##> modify:enchantment/calc/macro/head
##* 
##* 石頭
##* HP x1.3, STR x0.5
##* 

# HP
scoreboard players operation @s act_Health *= #13 num
scoreboard players operation @s act_Health /= #10 num

# STR
scoreboard players operation @s act_Strength /= #2 num

