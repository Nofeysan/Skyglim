# とりあえずタグを付けましょう
tag @s add damage_taken
execute on attacker run tag @s add damage_dealt

####* 攻撃力計算
#- damage = (1 + dmg) * (100 + str) * CD * multiplier * ChargeRate * ChargeRate * 0.01
#- D = dmg
#- S = str
#- C = CD
#- M = multiplier
#- R = ChargeRate

# リセット
data remove storage km_solver: inputs
data remove storage km_solver: vars

# 一般式を代入
data modify storage km_solver: inputs append value {f:{mul:[{mul:[{add:[{n:1.0f},{v:"D"}]},{add:[{n:100.0f},{v:"S"}]}]},{mul:[{mul:[{v:"C"},{v:"M"}]},{mul:[{n:0.01f},{mul:[{v:"R"},{v:"R"}]}]}]}]}}

# 初期値を代入
data modify storage km_solver: vars set value {D:0.0f, S:0.0f, C:1.0f, M:1.0f, R:1.0f}

###* 各値を入れていく
# 各ステータスを保存 (D: Damage, S: Strength etc.)
execute on attacker if entity @s[type=minecraft:player] run function damageapi:calc_damage/enemy/get_status_from_player
execute on attacker unless entity @s[type=minecraft:player] run data modify storage enemy: temp.uuid set from entity @s UUID[0]
execute on attacker unless entity @s[type=minecraft:player] run function damageapi:calc_damage/macro/get_status_from_another with storage enemy: temp

execute if score chargerate Temp matches ..89 store result storage km_solver: vars.R float 0.01 run random value 10..30
execute if score chargerate Temp matches 110.. run data modify storage km_solver: vars.R set value 1.10f
execute if entity @s[tag=additional_low] run data modify storage km_solver: vars.R set value 0.20f
execute if entity @s[tag=additional_normal] run data modify storage km_solver: vars.R set value 0.78f

#% cc 計算
# 100 から減算する
scoreboard players operation cc_r Temp = #100 num
scoreboard players operation cc_r Temp -= cc Temp

# 瑞祥なら +4%
execute on attacker if score @s occupation matches 5 run scoreboard players operation cc_r Temp += #4 num

# 計算
execute store result score random Temp run random value 1..100

execute if score random Temp > cc_r Temp store result storage km_solver: vars.C float 0.01 run scoreboard players get cd Temp
execute if score random Temp > cc_r Temp run scoreboard players set c_did Temp 1

###* いろんな効果
# 防具の倍率
# 追撃
execute on attacker if predicate modify:enchantment/armor.c/additional unless score additional_done Temp matches 1.. if score random Temp matches 1..25 run function damageapi:calc_damage/enemy/armor/additional
execute on attacker if entity @s[type=minecraft:armor_stand] as @p if predicate modify:enchantment/armor.c/additional unless score additional_done Temp matches 1.. if score random Temp matches 1..25 run function damageapi:calc_damage/enemy/armor/additional

#* 職業ごとの倍率
execute on attacker if score @s occupation matches 2 unless predicate damageapi:has_projectile run data modify storage km_solver: vars.M set value 1.2f
execute on attacker if score @s occupation matches 4 unless predicate damageapi:has_projectile run data modify storage km_solver: vars.M set value 0.8f

# 実行
execute at @p run function km_solver:solve

# 一時保存
data modify storage damageapi: damage.value set from storage km_solver: outputs[0]

#! debug
#-tellraw @a [{"text":"\ue010 与ダメージ(軽減前) : ","color": "#44ddf4"},{"storage": "km_solver:","nbt": "outputs[0]"}]
#-tellraw @a [{"text":"\ue010 vars : ","color": "#44ddf4"},{"storage": "km_solver:","nbt": "vars"}]



####* 被ダメージ計算
#- dealt = damage * (1 - def/(def + 100)) * Error
#- G = GetDamage
#- D = def
#- E = Error

# リセット
data remove storage km_solver: inputs
data remove storage km_solver: vars

# 一般式を代入
data modify storage km_solver: inputs append value {f:{mul:[{mul:[{v:"E"},{v:"G"}]},{sub:[{n:1.0f},{div:[{v:"D"},{add:[{v:"D"},{n:100.0f}]}]}]}]}}

# 初期値を代入
data modify storage km_solver: vars set value {G:0.0f, D:0.0f, E:1.0f}

# ステータス保存
data modify storage enemy: temp.uuid set from entity @s UUID[0]
function damageapi:calc_damage/macro/get_enemy with storage enemy: temp

data modify storage km_solver: vars.G set from storage damageapi: damage.value

# 乱数でちょっと変える (*0.90-1.05)
execute store result storage km_solver: vars.E float 0.001 run random value 900..1050

# 実行
execute at @p run function km_solver:solve

#! debug
#-tellraw @a [{"text":"\ue010 与ダメージ(軽減後) float: ","color": "#92f3a4"},{"storage": "km_solver:","nbt": "outputs[0]"}]
#-tellraw @a [{"text":"\ue010 vars : ","color": "#92f3a4"},{"storage": "km_solver:","nbt": "vars"}]

# DealtDamage Temp に入れる
execute store result score DealtDamage Temp run data get storage km_solver: outputs[0] 100
execute if score DealtDamage Temp matches ..-1 run scoreboard players set DealtDamage Temp 0


# 防具効果：攻撃時のやつ
execute on attacker if entity @s[type=minecraft:player] run function damageapi:calc_damage/enemy/armor/when_damage
execute on attacker if entity @s[type=minecraft:armor_stand] as @p run function damageapi:calc_damage/enemy/armor/when_damage

###* 与ダメージ表示
# int float に分ける
scoreboard players operation @s Damage.int = DealtDamage Temp
scoreboard players operation @s Damage.int /= #100 num

scoreboard players operation @s Damage.float = DealtDamage Temp
scoreboard players operation @s Damage.float %= #100 num
scoreboard players operation @s Damage.float /= #10 num

# macro で -179..180 で rotate に代入して召喚
execute store result storage damageapi: rotation.xy int 1 run random value -179..180
execute store result storage damageapi: rotation.z int 1 run random value -50..50
function damageapi:calc_damage/macro/summon_damage with storage damageapi: rotation

execute as @n[predicate=damageapi:is_stick,tag=!modified] run function damageapi:calc_damage/enemy/damage_modify

# リセット
data modify entity @s Health set value 1024
data modify entity @s AbsorptionAmount set value 1024

###* ダメージを付与
execute at @s run function damageapi:calc_damage/macro/get_enemy_hp with storage enemy: temp

###* 死亡処理
execute at @s if score current Temp matches ..0 run function damageapi:calc_damage/macro/when_death with storage enemy: temp



# 数値のリセット
execute on attacker run scoreboard players reset @s UseBow
scoreboard players reset c_did Temp
execute on attacker run scoreboard players reset @s ChargeRate

# 最後にタグをとる
tag @s remove damage_taken
execute on attacker run tag @s remove damage_dealt
tag @s remove additional_low
tag @s remove additional_normal
