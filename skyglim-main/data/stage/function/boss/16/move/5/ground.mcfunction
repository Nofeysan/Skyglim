#> stage:boss/12/move/2/ground
# 
# ダメージ処理
# 
# 

# effect
    effect give @a[distance=..75, predicate=damageapi:is_on_ground] minecraft:wind_charged 1 30
    effect give @a[distance=..75, predicate=damageapi:is_on_ground] minecraft:slowness 1 30
    particle minecraft:block{block_state: "minecraft:dirt"} ~ ~ ~ 10 0.2 10 0.1 480
    particle minecraft:sweep_attack ~ ~ ~ 10 0.2 10 0.1 200
    execute as @a[distance=..75] at @s run playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.3 0.5
