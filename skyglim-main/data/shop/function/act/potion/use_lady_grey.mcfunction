##> shop:act/root
##* 
##* レディ・グレイ (HP: +100)
##* 
##* 

# 幸運を消す
effect clear @s minecraft:luck

# 回復処理
scoreboard players add @s CurrentHealth 10000

# 通知と音
execute at @s run playsound minecraft:block.brewing_stand.brew voice @s ~ ~ ~ 1 1

tellraw @s [{text: "* HP +100",color: "gray"}]
