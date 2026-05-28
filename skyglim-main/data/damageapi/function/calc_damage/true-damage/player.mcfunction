#> damageapi:calc_damage/true-damage/player
# 
# エフェクトついてる→amplifier取得→マクロで割合取得→データに代入
# 
# 

# amplifier 取得
execute store result score _ _ run data get entity @s active_effects[{id: "minecraft:wind_charged"}].amplifier

# 調整(1~99)
execute if score _ _ matches 101.. run scoreboard players set _ _ 100
execute if score _ _ matches ..0 run scoreboard players set _ _ 1

# storage
execute store result storage damageapi: temp.n int 1 run scoreboard players get _ _

# health 取得・ダメージ量代入
function damageapi:calc_damage/true-damage/macro/get_player_max_health with storage damageapi: temp

# effect clear
effect clear @s minecraft:wind_charged

# effect
effect give @s minecraft:blindness 1 0 true
advancement grant @s only stage:block/rate
