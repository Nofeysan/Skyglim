#> entity:effector/act/s7
#
# as @s at @s で実行
#
# 範囲内のプレイヤーの足元にダメージ
# 
# 

# random >> fail check
    execute store result score _ _ run random value 0..99
    execute if score _ _ matches 0..89 run return fail

#+ act
    execute at @a[distance=..20] run function entity:aec_manager/summon/.cyl {r: 9, t: 60, dmg: 71, str: 47, id: 20101}
    playsound minecraft:item.trident.return voice @a ~ ~ ~ 0.6 1.5

# reset
    scoreboard players set @s EffectorCount 0
