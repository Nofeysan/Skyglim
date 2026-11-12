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
    execute at @a[distance=..20] run function entity:aec_manager/summon/.cyl {r: 7, t: 40, dmg: 64, str: 41, id: 11504}
    playsound minecraft:entity.rabbit.hurt voice @a ~ ~ ~ 0.8 1.0

# reset
    scoreboard players set @s EffectorCount 0
