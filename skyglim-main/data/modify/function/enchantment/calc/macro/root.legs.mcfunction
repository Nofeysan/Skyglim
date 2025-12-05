##> modify:enchantment/calc/root
##* 
##* 軽量化のあがきで repair_cost を保存して macro で実行
##* 
##* 

execute store result storage status: enchantment.equip.legs int 1 run scoreboard players get equip.legs Temp
function modify:enchantment/calc/macro/legs with storage status: enchantment.equip
