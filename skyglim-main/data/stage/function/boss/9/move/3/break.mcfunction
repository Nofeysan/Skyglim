#> stage:boss/6/move/3/break
# 
# 落下のダメージ → マグマが出る感じ
# 
# 

# perform
    particle minecraft:block{block_state: {Name: "minecraft:dripstone_block"}} ~ ~ ~ 0.2 0.2 0.2 0.03 30 force @a
    playsound minecraft:block.spawner.break voice @a ~ ~ ~ 0.5 1

# effect
    execute if score $s9.boss.half _ matches 0 run effect give @a[distance=..1.5] minecraft:wind_charged 1 10
    execute if score $s9.boss.half _ matches 1 run effect give @a[distance=..1.5] minecraft:wind_charged 1 20

# AoE
    execute if score $s9.boss.half _ matches 0 run function entity:aec_manager/summon/.cyl {r: 6, t: 60, dmg: 16, str: 18, id: 92}
    execute if score $s9.boss.half _ matches 1 run function entity:aec_manager/summon/.cyl {r: 6, t: 60, dmg: 16, str: 18, id: 92}

# kill
    kill @s
