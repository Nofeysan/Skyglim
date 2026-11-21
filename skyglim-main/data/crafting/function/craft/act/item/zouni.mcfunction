#> crafting:craft/act/item/zouni
# 
# 
# 
# 

# 幸運を消す
    effect clear @s minecraft:luck

# 緩衝体力 add
    scoreboard players operation _ _ = @s MaxHealth
    scoreboard players operation _ _ *= #7 num
    scoreboard players operation _ _ /= #100 num
    scoreboard players operation @s Absorption += _ _

# 通知と音
    execute at @s run playsound minecraft:block.piston.extend voice @s ~ ~ ~ 1.2 1
    execute at @s run particle minecraft:dust{color: 16431117, scale: 0.8} ~ ~0.5 ~ 0.7 1.2 0.7 0 220

    tellraw @s [{text: "◆ 緩衝体力 +7%", color: "gray"}]
