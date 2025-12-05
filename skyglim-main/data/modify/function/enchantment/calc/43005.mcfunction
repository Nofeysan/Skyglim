##> modify:enchantment/calc/macro/head
##* 
##* 防御力なんて飾り
##* HP x1.7, DEF x0
##* 

# HP
scoreboard players operation @s act_Health *= #17 num
scoreboard players operation @s act_Health /= #10 num

# DEF
scoreboard players set @s act_Defence 0

