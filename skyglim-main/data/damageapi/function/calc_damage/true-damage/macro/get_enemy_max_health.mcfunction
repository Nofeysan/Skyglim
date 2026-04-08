#> damageapi:calc_damage/true-damage/macro/get_player_max_health
# 
# 体力をmacroで取得
# 0.0005=5% > n%=0.00n
# 

# n% を入れる
$execute if score _ _ matches 1..9 store result storage km_solver: outputs[0] float 0.000$(n) run data get enchantment @s data.status.max_hp
$execute if score _ _ matches 10..99 store result storage km_solver: outputs[0] float 0.00$(n) run data get enchantment @s data.status.max_hp

#! debug
tellraw @a {text: "\ue010 [enemy] $(n)%のダメージを与えました"}
