#> entity:effector/act/s7
#
# as @s at @s で実行
#
# 範囲内のプレイヤーの足元にダメージ
# 
# 

# random >> fail check
    execute store result score _ _ run random value 0..99
    execute if score _ _ matches 0..49 run return fail

#+ act
    execute at @a[distance=..20] run function entity:aec_manager/summon/.square {r: 9, t: 60, dmg: 16, str: 18, id: 10701}
    playsound minecraft:item.trident.throw voice @a ~ ~ ~ 1.2 1.5

# reset
    scoreboard players set @s EffectorCount 0
