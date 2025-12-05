##> modify:enchantment/calc/root
##* 
##* 軽量化のあがきで repair_cost を保存して macro で実行
##* 
##* 

execute store result storage status: enchantment.equip.head int 1 run scoreboard players get equip.head Temp
function modify:enchantment/calc/macro/head with storage status: enchantment.equip
