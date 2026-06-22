#> entity:scoreboard/level/magic
# 
#% 偶数: hp +3, str +2, cd +1, def +1, mp +2, luck +1
#% 奇数: hp +3, str +1, cd +1, def +1, mp +2, luck +2
# 

# lv の偶奇取得
scoreboard players operation _ Temp = @s CurrentLv
scoreboard players operation _ Temp %= #2 num

# 偶数
    execute if score _ Temp matches 0 run scoreboard players add @s Health 3
    execute if score _ Temp matches 0 run scoreboard players add @s Strength 2
    execute if score _ Temp matches 0 run scoreboard players add @s CritDamage 1
    execute if score _ Temp matches 0 run scoreboard players add @s Defence 1
    execute if score _ Temp matches 0 run scoreboard players add @s MagicPoint 2
    execute if score _ Temp matches 0 run scoreboard players add @s Luck 1

    execute if score _ Temp matches 0 run tellraw @s [{text: "[ MAX HP +3 ] [ STR +2 ] [ CD +1 ]",color: "gray"}]
    execute if score _ Temp matches 0 run tellraw @s [{text: "[ DEF +1 ] [ MP +2 ] [ LUCK +1 ]",color: "gray"}]

# 奇数
    execute if score _ Temp matches 1 run scoreboard players add @s Health 3
    execute if score _ Temp matches 1 run scoreboard players add @s Strength 1
    execute if score _ Temp matches 1 run scoreboard players add @s CritDamage 1
    execute if score _ Temp matches 1 run scoreboard players add @s Defence 1
    execute if score _ Temp matches 1 run scoreboard players add @s MagicPoint 2
    execute if score _ Temp matches 1 run scoreboard players add @s Luck 2

    execute if score _ Temp matches 1 run tellraw @s [{text: "[ MAX HP +3 ] [ STR +1 ] [ CD +1 ]",color: "gray"}]
    execute if score _ Temp matches 1 run tellraw @s [{text: "[ DEF +1 ] [ MP +2 ] [ LUCK +2 ]",color: "gray"}]
