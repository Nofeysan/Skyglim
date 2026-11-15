#> stage:boss/12/move/2/ground
# 
# ダメージ処理
# 
# 

# effect
    effect give @a[distance=..75, predicate=damageapi:is_on_ground] minecraft:wind_charged 1 30
    particle minecraft:block{block_state: "minecraft:dirt"} ~ ~ ~ 10 0.2 10 0.1 480
    particle minecraft:sweep_attack ~ ~ ~ 10 0.2 10 0.1 200
    execute as @a[distance=..75] at @s run playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.3 0.5

# ground break
    execute unless score $s12.boss.half _ matches 1 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:air replace #stage:can_break
    execute if score $s12.boss.half _ matches 1 run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 minecraft:air replace #stage:can_break
    particle minecraft:explosion ~ ~ ~ 1 0.5 1 0.1 200
