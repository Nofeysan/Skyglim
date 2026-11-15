#> stage:boss/6/move/3/break
# 
# 落下のダメージ → マグマが出る感じ
# 
# 

# perform
    particle minecraft:block{block_state: {Name: "minecraft:white_concrete_powder"}} ~ ~ ~ 0.2 0.2 0.2 0.03 30 force @a
    playsound minecraft:block.wool.break voice @a ~ ~ ~ 1.2 0.8

# effect
    execute if score $ex3.boss.half _ matches 0 run effect give @a[distance=..1.5] minecraft:wind_charged 1 15

# AoE
    execute if score $ex3.boss.half _ matches 0 run function entity:aec_manager/summon/.cyl {r: 6, t: 60, dmg: 90, str: 73, id: 233}

# kill
    kill @s
