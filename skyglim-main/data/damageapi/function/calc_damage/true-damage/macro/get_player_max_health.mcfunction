#> damageapi:calc_damage/true-damage/macro/get_player_max_health
# 
# 体力をmacroで取得
# 0.0005=5% > n%=0.00n
# 

# n% を入れる
$execute if score _ _ matches 1..9 store result storage km_solver: outputs[0] float 0.000$(n) run scoreboard players get @s MaxHealth
$execute if score _ _ matches 10..99 store result storage km_solver: outputs[0] float 0.00$(n) run scoreboard players get @s MaxHealth
execute if score _ _ matches 100 store result storage km_solver: outputs[0] float 0.01 run scoreboard players get @s MaxHealth

#! debug
#$tellraw @a {text: "\ue010 [player] $(n)%のダメージを与えました"}
