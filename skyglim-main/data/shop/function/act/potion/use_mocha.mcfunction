##> shop:act/root
##* 
##* モカ・ミルク (MP: +30)
##* 
##* 

# 幸運を消す
effect clear @s minecraft:luck

# 回復処理
scoreboard players add @s CurrentMP 3000

# 通知と音
execute at @s run playsound minecraft:block.brewing_stand.brew voice @s ~ ~ ~ 1 1

tellraw @s [{text: "* MP +30",color: "gray"}]
