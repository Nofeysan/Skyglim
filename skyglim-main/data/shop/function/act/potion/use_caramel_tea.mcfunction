##> shop:act/root
##* 
##* キャラメルティー (HP: +50)
##* 
##* 

# 幸運を消す
effect clear @s minecraft:luck

# 回復処理
scoreboard players add @s CurrentHealth 5000

# 通知と音
execute at @s run playsound minecraft:block.brewing_stand.brew voice @s ~ ~ ~ 1 1

tellraw @s [{text: "* HP +50",color: "gray"}]
