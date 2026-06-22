#> entity:spawner/remove
# 
# スポナーを消す
# 
# 

# 壊した回数を増やす
scoreboard players set @p[distance=..12, predicate=modify:enchantment/tool/is_select_tool] IsSpawnerMined 1

# particle
particle minecraft:wax_off ~ ~ ~ 0.5 0.5 0.5 0.04 120
playsound minecraft:entity.experience_orb.pickup voice @a ~ ~ ~ 0.4 1.2

# ブロックディスプレイと自身を kill
kill @e[distance=..0.5, tag=Spawner]
