#> stage:boss/4/move/2/shoot
# 
# ビームを撃つ
# as item at @s
# 

# 移動回数
scoreboard players set $count _ 60

# ボスの場所に移動&発射
execute at @s positioned as @n[predicate=entity:entity_enemy, tag=boss, tag=ex5] facing entity @s eyes run function stage:boss/ex5/move/1/straight
