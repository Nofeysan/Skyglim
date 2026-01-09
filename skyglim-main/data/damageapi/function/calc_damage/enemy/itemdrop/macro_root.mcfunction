#> damageapi:calc_damage/enemy/itemdrop/macro_root
# 
# <storage>
#   damageapi: loot.path
# 
# <score>
#   luck Temp; luck値
# 

# 乱数を振る (1-100)
execute store result score _ _ run random value 1..100

# luck 以上なら loot
$execute if score luck Temp >= _ _ run loot spawn ~ ~ ~ loot entity:mob_drop/$(path)

# 100 減らす
scoreboard players remove luck Temp 100

# もし1以上ならもう一回
execute if score luck Temp matches 1.. run function damageapi:calc_damage/enemy/itemdrop/macro_root with storage damageapi: loot
