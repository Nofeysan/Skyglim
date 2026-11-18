#> stage:boss/6/move/3/break
# 
# 落下のダメージ → マグマが出る感じ
# 
# 

# perform
    particle minecraft:dust{color: 4513268, scale: 0.7} ~ ~ ~ 0.4 5 0.4 0.1 200
    playsound minecraft:block.tripwire.detach voice @a ~ ~ ~ 0.2 1
    playsound minecraft:entity.item.pickup voice @a ~ ~ ~ 0.5 1.5

# effect
    execute if score $ex5.boss.half _ matches 0 run effect give @a[distance=..1.5] minecraft:wind_charged 1 10
    execute if score $ex5.boss.half _ matches 1 run effect give @a[distance=..1.5] minecraft:wind_charged 1 20

# AoE
    execute if score $ex5.boss.half _ matches 0 run function entity:aec_manager/summon/.cyl {r: 4, t: 60, dmg: 16, str: 18, id: 251}
    execute if score $ex5.boss.half _ matches 1 run function entity:aec_manager/summon/.cyl {r: 6, t: 60, dmg: 16, str: 18, id: 251}

# kill
    kill @s
