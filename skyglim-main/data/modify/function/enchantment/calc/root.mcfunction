##> damageapi:status/player/check
##* 
##* Enchantment の倍率効果
##* 
##* 

###// melee/range/magic

#* 数値のリセット
    scoreboard players set equip.head Temp 0
    scoreboard players set equip.chest Temp 0
    scoreboard players set equip.legs Temp 0

#* armor-head
    # data が存在したら取得, 無ければ 0 を入手
        execute store result score equip.head Temp if data entity @s equipment.head run data get entity @s equipment.head.components."minecraft:custom_data".data.enchantment

    # 43001: 水中作業士
        execute if score equip.head Temp matches 43001 run effect give @s minecraft:water_breathing infinite 0 true
        execute unless score equip.head Temp matches 43001 run effect clear @s minecraft:water_breathing

    # 43003: かたくなる (HP +10%)
        execute if score equip.head Temp matches 43003 run scoreboard players add hp multi 10
    
    # 43004: 石頭 (HP +30%, STR -50%)
        execute if score equip.head Temp matches 43004 run scoreboard players add hp multi 30
        execute if score equip.head Temp matches 43004 run scoreboard players remove str multi 50
    
    # 43005: 防御力なんて飾り (HP +75%, DEF -100%)
        execute if score equip.head Temp matches 43005 run scoreboard players add hp multi 75
        execute if score equip.head Temp matches 43005 run scoreboard players remove def multi 100


# 逆境
#todo デバフのpredicate作って倍率かける

#* armor-leggings
    # data が存在したら取得, 無ければ 0 を入手
        execute store result score equip.legs Temp if data entity @s equipment.legs run data get entity @s equipment.legs.components."minecraft:custom_data".data.enchantment

    # 45003: 極振りのロマン (SPD -50%, STR +20%)
        execute if score equip.legs Temp matches 45003 run scoreboard players add str multi 20
        execute if score equip.legs Temp matches 45003 run scoreboard players remove spd multi 50

    # 45004: 死ななければいいのだろう? (DEF +10%xn)
        execute if score equip.legs Temp matches 45004 run function modify:enchantment/calc/45004

    # 45007: うさぎのこころ
        execute if score equip.legs Temp matches 45007 run effect give @s minecraft:jump_boost infinite 2 true
        execute unless score equip.legs Temp matches 45007 run effect clear @s minecraft:jump_boost

#* amror-chestplate
    # data が存在したら取得, 無ければ 0 を入手
        execute store result score equip.chest Temp if data entity @s equipment.chest run data get entity @s equipment.chest.components."minecraft:custom_data".data.enchantment

    # 44004: 正々堂々の真っ向勝負
        execute if score equip.chest Temp matches 44004 run function modify:enchantment/calc/44004

    # 44005: 力こそパワー (STR +50%, CC -100%)
        execute if score equip.chest Temp matches 44005 run scoreboard players add str multi 50
        execute if score equip.chest Temp matches 44005 run scoreboard players remove cc multi 100

    # 44006: 運を味方に (CD +100%, STR -50%)
        execute if score equip.chest Temp matches 44006 run scoreboard players add cd multi 100
        execute if score equip.chest Temp matches 44006 run scoreboard players remove str multi 50


###// armor-feet

###// tool

