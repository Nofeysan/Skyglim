#> stage:boss/6/move/3/break
# 
# 落下のダメージ → マグマが出る感じ
# 
# 

# perform
    particle minecraft:dust{color: 14718167, scale: 1.6} ~ ~ ~ 0.2 5 0.2 0.03 200
    playsound minecraft:block.tripwire.detach voice @a ~ ~ ~ 0.2 1
    playsound minecraft:entity.item.pickup voice @a ~ ~ ~ 0.5 1.5

# effect
    execute if score $s16.boss.half _ matches 0 run effect give @a[distance=..1.5] minecraft:wind_charged 1 10
    execute if score $s16.boss.half _ matches 1 run effect give @a[distance=..1.5] minecraft:wind_charged 1 20

# AoE
    execute if score $s16.boss.half _ matches 0 run function entity:aec_manager/summon/.cyl {r: 4, t: 60, dmg: 16, str: 18, id: 162}
    execute if score $s16.boss.half _ matches 1 run function entity:aec_manager/summon/.cyl {r: 6, t: 60, dmg: 16, str: 18, id: 162}

# kill
    kill @s
