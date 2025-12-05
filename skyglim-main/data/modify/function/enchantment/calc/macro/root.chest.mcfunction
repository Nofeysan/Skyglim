##> modify:enchantment/calc/root
##* 
##* 軽量化のあがきで repair_cost を保存して macro で実行
##* 
##* 

execute store result storage status: enchantment.equip.chest int 1 run scoreboard players get equip.chest Temp
function modify:enchantment/calc/macro/chest with storage status: enchantment.equip
