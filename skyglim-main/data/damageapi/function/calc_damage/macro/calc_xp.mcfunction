#> damageapi:calc_damage/macro/calc_xp
# 
# 経験値付与
# 
# 

# 保存
    scoreboard players operation _ _ = xp Temp

# 乱数でちょっと変える (*0.90-1.10)
    # 経験値加算
        # デフォ
        execute store result score randint Temp run random value 80..120

        # 経験値のしおり (xp +5%)
        execute if predicate damageapi:item/has_1110110 store result score randint Temp run random value 85..125

    scoreboard players operation _ _ *= randint Temp
    scoreboard players operation _ _ /= #100 num

# 増やす
    scoreboard players operation @s CurrentXp += _ _
    scoreboard players set @s ShowXpTime 40
    scoreboard players operation @s ShowXp += _ _

    playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.8 2

# XP の方の経験値
    execute store result score _ _ run random value 0..99
    execute if score _ _ matches 0..49 run xp add @a[distance=..15] 2 points
    execute if score _ _ matches 50..74 run xp add @a[distance=..15] 3 points
    execute if score _ _ matches 75..84 run xp add @a[distance=..15] 5 points
    execute if score _ _ matches 85..92 run xp add @a[distance=..15] 7 points
    execute if score _ _ matches 93..97 run xp add @a[distance=..15] 15 points
    execute if score _ _ matches 98..99 run xp add @a[distance=..15] 25 points

